#syntax=docker/dockerfile:1.4

# Prod image
FROM ruby:3.2.2-bullseye AS app_ruby

ENV RAILS_ENV=production
RUN apt-get update -qq && apt-get install -y postgresql-client postgis
WORKDIR /app
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN gem install rails -v '~> 7.1.1'
RUN gem install bundler
RUN bundle install --without rubymine

EXPOSE 3000

# Dev image
FROM app_ruby AS app_ruby_dev

ENV RAILS_ENV=development
RUN apt-get install -y build-essential ruby-dev libpq-dev
WORKDIR /app
RUN gem install debug
RUN bundle install
COPY . /app
ENTRYPOINT ["./entrypoints/docker-entrypoint.sh"]

EXPOSE 3000 1234 26168
