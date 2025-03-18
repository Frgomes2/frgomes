#!/usr/bin/env bash
# Instala dependências
bundle install

# Configurações para evitar falhas na compilação de assets
export NODE_OPTIONS="--max_old_space_size=2560"
export RAILS_SERVE_STATIC_FILES=true
export RAILS_ENV=production

# Rodar migrações do banco
bundle exec rails db:migrate

# Compilar os assets sem limpar
bundle exec rake assets:precompile --trace
