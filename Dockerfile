#syntax=docker/dockerfile:1.4

# Prod image
FROM ruby:3.2.2-bullseye AS app_ruby

ENV RAILS_ENV=production
RUN apt-get update -qq && apt-get install -y postgresql-client postgis curl gpg
RUN mkdir -p /etc/apt/keyrings; \
    curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg; \
    echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_20.x nodistro main" | tee /etc/apt/sources.list.d/nodesource.list; \
    apt-get update -qq && apt-get install -y nodejs; \
    npm install --global yarn;
WORKDIR /app
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN bundle install
COPY . /app
RUN SECRET_KEY_BASE_DUMMY=1 bundle exec rails assets:precompile
ENTRYPOINT ["./entrypoints/docker-entrypoint.sh"]

EXPOSE 3000

# Dev image
FROM app_ruby AS app_ruby_dev

ENV RAILS_ENV=development
RUN apt-get install -y build-essential ruby-dev libpq-dev
WORKDIR /app
RUN gem install debug
RUN bundle install
ENTRYPOINT ["./entrypoints/docker-entrypoint.sh"]

EXPOSE 3000 1234 26168
