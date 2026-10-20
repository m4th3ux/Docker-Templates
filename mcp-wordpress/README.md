# MCP do WordPress

Servidor MCP (Streamable HTTP) para um site WordPress, protegido por Basic auth.

```
cliente MCP -> Caddy (Basic auth) -> mcp-proxy -> mcp-wp -> REST API do WordPress
```

- Pacote: [`@instawp/mcp-wp`](https://www.npmjs.com/package/@instawp/mcp-wp)
- Endpoint: `http://IP_DO_HOST:8081/mcp`

## Requisitos

- Docker + Docker Compose
- WordPress com Application Password habilitado
- Usuário com permissão para as operações desejadas

## Setup

```bash
cp .env.example .env
# edite URL, usuário e Application Password

# gere o hash da senha do endpoint (diferente da senha do WordPress)
docker run --rm caddy:2-alpine caddy hash-password --plaintext 'SENHA_DO_ENDPOINT'
# substitua __BCRYPT_HASH__ no Caddyfile pelo hash gerado

docker compose up -d --build
```

Teste:

```bash
curl -u wp:SENHA_DO_ENDPOINT \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json, text/event-stream' \
  -d '{"jsonrpc":"2.0","id":1,"method":"initialize","params":{"protocolVersion":"2025-06-18","capabilities":{},"clientInfo":{"name":"teste","version":"1"}}}' \
  http://IP_DO_HOST:8081/mcp
```

## Cliente (OpenCode)

```json
{
  "mcp": {
    "servers": {
      "wp-lab": {
        "type": "remote",
        "url": "http://IP_DO_HOST:8081/mcp",
        "headers": {
          "Authorization": "Basic BASE64_DE_wp:SENHA_DO_ENDPOINT"
        }
      }
    }
  }
}
```

Gere o header com:

```bash
printf 'wp:%s' 'SENHA_DO_ENDPOINT' | base64 -w0
```

## Segurança

- O container do MCP só usa `expose`; a porta publicada é a do Caddy.
- As flags `--username/--password` do `mcp-proxy` são credenciais de **cliente**
  (upstream) e **não** protegem o servidor — por isso o Caddy na frente.
- Prefira a LAN ou VPN. Para expor na internet, use HTTPS (Caddy com domínio).
- Use um usuário WordPress dedicado e Application Password revogável.
- Rotação: gere novo hash, atualize o `Caddyfile` e recrie `wp-auth`.

## Operação

```bash
docker compose logs -f wp-auth wp-mcp
docker compose restart wp-mcp wp-auth
docker compose down
```
