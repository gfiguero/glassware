puts 'Environment variables verification'
puts '=== RAILS_MAX_THREADS: ' + ENV["RAILS_MAX_THREADS"].to_s
puts '=== REDIS_URL: ' + ENV["REDIS_URL"].to_s
puts '=== APP_SECRET: ' + ENV["APP_SECRET"].to_s
puts '=== JWT_SECRET: ' + ENV["JWT_SECRET"].to_s
puts '=== POSTGRES_HOST: ' + ENV["POSTGRES_HOST"].to_s
puts '=== POSTGRES_PORT: ' + ENV["POSTGRES_PORT"].to_s
puts '=== POSTGRES_DB: ' + ENV["POSTGRES_DB"].to_s
puts '=== POSTGRES_USER: ' + ENV["POSTGRES_USER"].to_s
puts '=== POSTGRES_PASSWORD: ' + ENV["POSTGRES_PASSWORD"].to_s
