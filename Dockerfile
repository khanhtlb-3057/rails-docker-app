FROM ruby:latest
RUN apt-get update -qq && apt-get install -y nodejs

WORKDIR /sample_app
COPY . /sample_app/

RUN gem install bundler && bundle install

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
