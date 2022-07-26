FROM ruby:3.1.2

RUN apt-get update && apt-get install -y build-essential curl cron logrotate gettext-base nano
RUN apt-get clean

WORKDIR /rails_docker
COPY . /rails_docker/

RUN gem install bundler && gem install rake && bundle install

COPY ["/docker/ruby/entrypoint.sh", "/docker/common/wait-for-it.sh", "/usr/bin/"]

RUN chmod +x /usr/bin/entrypoint.sh
RUN chmod +x /usr/bin/wait-for-it.sh

EXPOSE 3000

CMD  ["rails", "server", "-b", "0.0.0.0"]
