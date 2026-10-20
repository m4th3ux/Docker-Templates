# MCP do Obsidian

Servidor MCP (Streamable HTTP) para um vault local do Obsidian, protegido por
Basic auth. O Obsidian **não precisa estar aberto**: o servidor lê e escreve
direto nos arquivos Markdown.

```
cliente MCP -> Caddy (Basic auth) -> mcp-proxy -> obsidian-mcp -> /vault
```

- Pacote: [`obsidian-mcp@2`](https://www.npmjs.com/package/obsidian-mcp)
- Endpoint: `http://IP_DO_HOST:8083/mcp`
- Vault id: `notes` (configurável)

## Requisitos

- Docker + Docker Compose
- Vault com a pasta `.obsidian/` (o servidor exige)
- UID/GID do dono do vault (normalmente 1000)

## Setup

```bash
cp .env.example .env
# edite OBSIDIAN_VAULT_PATH, PUID/PGID e a porta

# gere o hash da senha (guarde a senha no gerenciador de senhas)
docker run --rm caddy:2-alpine caddy hash-password --plaintext 'SUA_SENHA'
# substitua __BCRYPT_HASH__ no Caddyfile pelo hash gerado

docker compose up -d --build
```

Teste:

```bash
curl -u obsidian:SUA_SENHA \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json, text/event-stream' \
  -d '{"jsonrpc":"2.0","id":1,"method":"initialize","params":{"protocolVersion":"2025-06-18","capabilities":{},"clientInfo":{"name":"teste","version":"1"}}}' \
  http://IP_DO_HOST:8083/mcp
```

## Cliente (OpenCode)

```json
{
  "mcp": {
    "servers": {
      "obsidian-lab": {
        "type": "remote",
        "url": "http://IP_DO_HOST:8083/mcp",
        "headers": {
          "Authorization": "Basic BASE64_DE_obsidian:SUA_SENHA"
        }
      }
    }
  }
}
```

Gere o header com:

```bash
printf 'obsidian:%s' 'SUA_SENHA' | base64 -w0
```

## Sincronização com git (opcional)

`obsidian-sync.sh` commita as alterações do MCP, faz `pull --rebase` e `push`.
Ajuste `OBSIDIAN_REPO_PATH` e agende:

```bash
chmod +x obsidian-sync.sh
crontab -e
# */5 * * * * /caminho/obsidian-sync.sh >> ~/obsidian-sync.log 2>&1
```

Adicione ao `.gitignore` do repositório do vault:

```
Main Notes/.obsidian-mcp/
```

(trash, locks e transações do servidor MCP)

## Segurança

- O container do MCP só usa `expose`; a porta publicada é a do Caddy.
- As flags `--username/--password` do `mcp-proxy` são credenciais de **cliente**
  (upstream) e **não** protegem o servidor — por isso o Caddy na frente.
- Prefira a LAN ou VPN. Para expor na internet, use HTTPS (Caddy com domínio).
- Rotação: gere novo hash, atualize o `Caddyfile` e recrie `obsidian-auth`.

## Operação

```bash
docker compose logs -f obsidian-auth obsidian-mcp
docker compose restart obsidian-mcp obsidian-auth
docker compose down
```
