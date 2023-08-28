Dir[Rails.root.join('scripts/generators/core/*.rb')].each { |file| require file }

namespace :destroy_v1 do
  desc 'destroy core scaffolds for v1 model'
  task destroy_core: :environment do
    puts 'Starting destroy_core task...'

    puts 'Destroying MapScaffold...'
    result = `#{MapScaffold.new.destroy_command}`
    puts result unless result.strip.empty?

    puts 'Destroying GroupScaffold...'
    result = `#{GroupScaffold.new.destroy_command}`
    puts result unless result.strip.empty?

    puts 'Destroying ProfileScaffold...'
    result = `#{ProfileScaffold.new.destroy_command}`
    puts result unless result.strip.empty?

    puts 'Destroying RoleScaffold...'
    result = `#{RoleScaffold.new.destroy_command}`
    puts result unless result.strip.empty?

    puts 'Destroying UserScaffold...'
    result = `#{UserScaffold.new.destroy_command}`
    puts result unless result.strip.empty?

    puts 'Finished destroy_core task!'
  end
end
