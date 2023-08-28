source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.2'

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem 'rails', '~> 7.0.7', '>= 7.0.7.2'

# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem 'sprockets-rails'

# Use postgresql as the database for Active Record
gem 'activerecord-postgis-adapter'
gem 'pg', '~> 1.1'

# Use the Puma web server [https://github.com/puma/puma]
gem 'puma', '~> 5.0'

# Bundle and transpile JavaScript [https://github.com/rails/jsbundling-rails]
gem 'jsbundling-rails'

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem 'turbo-rails'

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem 'stimulus-rails'

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem 'jbuilder'

# Use Redis adapter to run Action Cable in production
# gem "redis", "~> 4.0"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

gem 'redis', '~> 5.0'

# Redis session store
gem 'redis-session-store'

# Use services gem to implement Services arch
gem 'services'

# Use Json gem to parse json responses
gem 'json'

# Use JWT gem
# gem 'devise-jwt'

# Devise gem for authentication
gem 'devise'

# Devise two factor authentication
gem 'devise-two-factor'

# To enforce Database Consistency
gem 'database_consistency'

# Active model serializers gem
gem 'active_model_serializers', '~> 0.10.0'

# Rack-cors gem to allow cross origin requests
gem 'rack-cors'

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
gem 'image_processing'

# Docker deployment
gem 'brakeman'

# For workers management
gem 'sidekiq'

# Sidekiq Cron
gem 'sidekiq-cron'

# Sidekiq History
gem 'sidekiq-history'

# Avoid multiple instances of a sidekiq job
gem 'sidekiq-unique-jobs'

# Roles based authorization
gem 'cancancan'

# For traits in ActiveRecord
gem 'composition'

# Paranoia!
gem 'paranoia'

# Protect from brute force attacks
gem 'rack-attack'

# Oauth
gem 'oauth2', '~> 2.0'
gem 'omniauth-azure-activedirectory'
gem 'omniauth-google-oauth2'

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem 'awesome_print'
  gem 'bundler-audit'
  gem 'coverband'
  gem 'debug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'dotenv-rails'
  gem 'factory_bot_rails'
  gem 'ffaker'
  gem 'rails_performance'
  gem 'rspec-rails'
  gem 'rubocop-performance'
  gem 'rubocop-rails'
  gem 'rubocop-rspec'
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem 'web-console'
  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  gem 'rack-mini-profiler'
  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  gem 'annotate'
end

group :rubymine do
  gem 'debase'
  gem 'ruby-debug-ide'
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

# Use Sass to process CSS
# gem "sassc-rails"

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"
