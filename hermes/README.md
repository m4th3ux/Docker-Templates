# Hermes Agent — Template Docker para Homelab

[Hermes Agent](https://github.com/NousResearch/hermes-agent) (Nous Research) rodando em Docker no homelab, com inferência via **APIs externas** (sem GPU) e acesso pelo **gateway de mensagens** (Telegram + Discord).

## Requisitos de hardware

| Recurso | Mínimo |
|---|---|
| CPU | 1–2 vCPU |
| RAM | 2–4 GB |
| Disco | ~10 GB (imagem ~1 GB + dados) |
| GPU | **Não precisa** (inferência nas APIs externas) |

## Instalação

1. **Prepare o ambiente**

   ```bash
   cp example.env .env
   # Edite .env e preencha pelo menos:
   #   - a chave do provedor de LLM (ex.: OPENROUTER_API_KEY)
   #   - TELEGRAM_BOT_TOKEN + TELEGRAM_ALLOWED_USERS
   #   - DISCORD_BOT_TOKEN + DISCORD_ALLOWED_USERS
   ```

2. **Suba o container**

   ```bash
   docker compose up -d
   docker compose logs -f hermes   # acompanhe o primeiro boot
   ```

3. **Configure o modelo de LLM** (uma única vez)

   ```bash
   docker exec -it hermes hermes model
   ```

   Escolha o provedor e o modelo (ex.: `openrouter:anthropic/claude-sonnet-4.5`).
   Use `/model <provedor:modelo>` em qualquer conversa para trocar depois.

4. **Conecte as plataformas de mensagem** (se não preencheu via `.env`)

   ```bash
   docker exec -it hermes hermes gateway setup
   docker compose restart
   ```

## Como obter os tokens

### Telegram
1. Converse com [@BotFather](https://t.me/BotFather): `/newbot` → nome → username.
2. Copie o **token** para `TELEGRAM_BOT_TOKEN`.
3. Envie `/start` para [@userinfobot](https://t.me/userinfobot) e copie seu **ID** para `TELEGRAM_ALLOWED_USERS` (só esses IDs conseguem falar com o bot).

### Discord
1. Acesse [Discord Developers](https://discord.com/developers/applications) → **New Application** → aba **Bot**.
2. Ative **Message Content Intent** (obrigatório) e clique em **Reset Token**.
3. Copie o token para `DISCORD_BOT_TOKEN`.
4. Ative **Developer Mode** no Discord (Configurações → Avançado), clique direito no seu usuário → **Copy User ID** → cole em `DISCORD_ALLOWED_USERS`.
5. Convide o bot para seu servidor (substitua `YOUR_APP_ID`):

   ```
   https://discord.com/oauth2/authorize?client_id=YOUR_APP_ID&scope=bot+applications.commands&permissions=309240908864&integration_type=0
   ```

## Dashboard web (opcional)

O serviço `dashboard` está comentado no `docker-compose.yml` e, por padrão, escuta só em `127.0.0.1` (ele guarda chaves de API — **não exponha na LAN sem autenticação**). Para acessar, descomente o serviço e use um túnel SSH:

```bash
docker compose up -d
ssh -L 9119:localhost:9119 usuario@homelab
# Acesse http://localhost:9119 no navegador
```

## Manutenção

```bash
docker compose pull && docker compose up -d   # atualizar o Hermes
docker exec -it hermes hermes doctor          # diagnosticar problemas
docker compose logs -f hermes                 # logs do gateway
```

O estado (memórias, skills, sessões, config) fica no volume nomeado `hermes_data`, sobrevivendo a recriações do container.

## Referências

- [Documentação oficial](https://hermes-agent.nousresearch.com/docs/)
- [Messaging Gateway (Telegram/Discord)](https://hermes-agent.nousresearch.com/docs/user-guide/messaging)
- [Imagem no Docker Hub](https://hub.docker.com/r/nousresearch/hermes-agent)
