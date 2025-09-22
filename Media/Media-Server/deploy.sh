#!/bin/bash

# Nome do arquivo Docker Compose
COMPOSE_FILE="docker-compose.yml"

# Função para verificar se um comando existe
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Verificar se Docker está instalado
if ! command_exists docker; then
    echo "Docker não está instalado. Por favor, instale o Docker e tente novamente."
    exit 1
fi

# Verificar se Docker Compose está instalado
if ! command_exists docker-compose; then
    echo "Docker Compose não está instalado. Por favor, instale o Docker Compose e tente novamente."
    exit 1
fi

# Verificar se o arquivo docker-compose.yml existe
if [ ! -f "$COMPOSE_FILE" ]; then
    echo "Arquivo $COMPOSE_FILE não encontrado. Certifique-se de que está no mesmo diretório do script."
    exit 1
fi

# Criar diretórios necessários
echo "Criando diretórios necessários..."
mkdir -p transmission/config transmission/watch media jelly/config

# Configurar permissões para os diretórios
echo "Configurando permissões..."
chown -R 1000:1000 transmission jelly media

# Iniciar os serviços com Docker Compose
echo "Iniciando os serviços..."
docker-compose -f "$COMPOSE_FILE" up -d

# Exibir o status dos containers
echo "Status dos containers:"
docker-compose -f "$COMPOSE_FILE" ps

echo "Deploy concluído com sucesso!"

