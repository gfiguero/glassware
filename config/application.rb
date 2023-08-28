require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
# config/application.rb
Bundler.require(*Rails.groups)

Dotenv::Railtie.load if ['development', 'test', 'staging', 'prod'].include? ENV['RAILS_ENV']

HOSTNAME = ENV.fetch('HOSTNAME', nil)

module AimmanagerR1App
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0
    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
