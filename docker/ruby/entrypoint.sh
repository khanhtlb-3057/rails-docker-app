#!/bin/bash

set -e
# bundle check || bundle install --binstubs="$BUNDLE_BIN"

bundle exec rails db:create
bundle exec rails db:migrate

rm -f /rails_docker/tmp/pids/server.pid

# bundle exec rails assets:precompile
bundle exec rails server -b 0.0.0.0

# exec "$@"
