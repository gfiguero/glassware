Dir[Rails.root.join('scripts/generators/core/*.rb')].each { |file| require file }

namespace :generate_v1 do
  desc 'generate core scaffolds for v1 model'
  task generate_core: :environment do
    puts 'Starting generate_core task...'

    puts 'Generating MapScaffold...'
    result = `#{MapScaffold.new.generate_command}`
    puts result unless result.strip.empty?

    puts 'Generating GroupScaffold...'
    result = `#{GroupScaffold.new.generate_command}`
    puts result unless result.strip.empty?

    puts 'Generating ProfileScaffold...'
    result = `#{ProfileScaffold.new.generate_command}`
    puts result unless result.strip.empty?

    puts 'Generating RoleScaffold...'
    result = `#{RoleScaffold.new.generate_command}`
    puts result unless result.strip.empty?

    puts 'Generating UserScaffold...'
    result = `#{UserScaffold.new.generate_command}`
    puts result unless result.strip.empty?

    puts 'Finished generate_core task!'
  end
end
