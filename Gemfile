source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

### Basic Structure
ruby '3.2.2'

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem 'rails', '~> 7.1.1'

# Use the Puma web server [https://github.com/puma/puma]
gem 'puma', '>= 5.0'

# Manage Procfile-based applications
gem 'foreman'

# Rails Admin Panel
gem 'rails_admin', '~> 3.0'

### Database
# Use postgresql as the database for Active Record
gem 'pg', '~> 1.1'

# Geolocations Postgis Adapter for Active Record
gem 'activerecord-postgis-adapter'

# Soft Delete fot Active Record
gem 'paranoia'

# Use Redis adapter to run Action Cable in production
gem 'redis', '~> 5.0'

# Redis session store
gem 'redis-session-store'

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

### Assets
# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem 'sprockets-rails'

# Bundle and transpile JavaScript [https://github.com/rails/jsbundling-rails]
gem 'jsbundling-rails'

# Bundle and process CSS [https://github.com/rails/cssbundling-rails]
gem "cssbundling-rails"

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem 'turbo-rails'

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem 'stimulus-rails'

# Use Sass to process CSS
gem "sassc-rails"

# Tailwind for Rails
gem "tailwindcss-rails"

### API Tools
# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem 'jbuilder'

# Use Json gem to parse json responses
gem 'json'

### Security
# Devise gem for authentication
#gem 'devise'

# Devise two factor authentication
#gem 'devise-two-factor'

# Roles based authorization
#gem 'cancancan'

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
#gem "bcrypt", "~> 3.1.7"

# Use JWT gem
#gem 'devise-jwt'

# Rack-cors gem to allow cross origin requests
#gem 'rack-cors'

# Protect from brute force attacks
#gem 'rack-attack'

# Oauth
#gem 'oauth2', '~> 2.0'
#gem 'omniauth-azure-activedirectory'
#gem 'omniauth-google-oauth2'

### Utilities
# Agnostic pagination in plain ruby. It does it all. Better.
gem 'pagy', '~> 6.1'

# Use services gem to implement Services arch
#gem 'services'

# To enforce Database Consistency
#gem 'database_consistency'

# Active model serializers gem
#gem 'active_model_serializers', '~> 0.10.0'

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# Internationalization for Rails
gem 'rails-i18n'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
#gem 'image_processing'

# Docker deployment
#gem 'brakeman'

# For workers management
#gem 'sidekiq'

# Sidekiq Cron
#gem 'sidekiq-cron'

# Sidekiq History
#gem 'sidekiq-history'

# Avoid multiple instances of a sidekiq job
#gem 'sidekiq-unique-jobs'

# For traits in ActiveRecord
#gem 'composition'

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem 'awesome_print'
  gem 'bundler-audit'
  gem 'coverband'
  gem 'debug', platforms: %i[ mri mingw x64_mingw ]
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
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

gem "devise", "~> 4.9"
