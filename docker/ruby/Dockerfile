FROM ruby:latest

RUN apt-get update && apt-get install -y build-essential curl cron logrotate gettext-base nano
RUN apt-get clean

WORKDIR /sample_app
COPY . /sample_app/

RUN gem install bundler && bundle install

COPY /docker/ruby/entrypoint.sh /tmp/entrypoint.sh

EXPOSE 3000

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

CMD  ["rails", "server", "-b", "0.0.0.0"]
