#!/usr/bin/env bash
# ============================================================
# Sincroniza o vault do Obsidian MCP com um repositório git.
# Pensado para rodar no cron do usuário a cada 5 minutos.
#
# Ajuste as variáveis abaixo (ou exporte antes de agendar):
#   OBSIDIAN_REPO_PATH  raiz do clone git que contém o vault
#   OBSIDIAN_BRANCH     branch de destino (padrão: main)
#   OBSIDIAN_SYNC_LOG   arquivo de log (padrão: ~/obsidian-sync.log)
#
# Cron:
#   */5 * * * * /caminho/obsidian-sync.sh >> ~/obsidian-sync.log 2>&1
# ============================================================
set -uo pipefail

REPO="${OBSIDIAN_REPO_PATH:-$HOME/workspaces/notes}"
BRANCH="${OBSIDIAN_BRANCH:-main}"
LOG_FILE="${OBSIDIAN_SYNC_LOG:-$HOME/obsidian-sync.log}"

cd "$REPO" || exit 1

# Evita execuções simultâneas
exec 9>/tmp/obsidian-sync.lock
flock -n 9 || exit 0

# Trunca o log se passar de 1 MB
if [ -f "$LOG_FILE" ] && [ "$(stat -c%s "$LOG_FILE")" -gt 1048576 ]; then
  : > "$LOG_FILE"
fi

git config --local user.name "Obsidian MCP" >/dev/null
git config --local user.email "obsidian-mcp@localhost" >/dev/null

# 1. Commita alterações feitas pelo MCP
if [ -n "$(git status --porcelain)" ]; then
  git add -A
  git commit -m "obsidian: sync automático $(date '+%Y-%m-%d %H:%M:%S')" >/dev/null || true
fi

# 2. Integra commits vindos de outros clientes
if ! git pull --rebase --quiet origin "$BRANCH" >/dev/null 2>&1; then
  git rebase --abort >/dev/null 2>&1 || true
  echo "[$(date -Is)] ERRO: pull/rebase falhou; verifique conflitos manualmente" >&2
  exit 1
fi

# 3. Envia o que ainda não está no remoto
if [ -n "$(git log --oneline "origin/$BRANCH..HEAD" 2>/dev/null)" ]; then
  if ! git push --quiet origin "$BRANCH" 2>/dev/null; then
    echo "[$(date -Is)] ERRO: push falhou" >&2
    exit 1
  fi
fi
