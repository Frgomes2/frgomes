#!/usr/bin/env bash

# Instala dependências
bundle install

# Configurações para evitar erro na compilação de assets
export NODE_OPTIONS="--max_old_space_size=2560"
export RAILS_ENV=production
export RAILS_SERVE_STATIC_FILES=true
export RAILS_LOG_TO_STDOUT=true

# Rodar migrações do banco
bundle exec rails db:migrate

# Compilar os assets SEM limpar antes
echo "Pulando a compilação de assets no Render"

