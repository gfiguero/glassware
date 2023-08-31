Dir[Rails.root.join('scripts/generators/core/*.rb')].each { |file| require file }

namespace :generate do
  desc 'generate core scaffolds for v1 model'
  task core: :environment do
    puts 'Starting generator:core task...'

    puts 'Generating MapScaffold...'
    result = `#{MapScaffold.new.generate_command}`
    puts result unless result.strip.empty?

#    puts 'Generating RoleScaffold...'
#    result = `#{RoleScaffold.new.generate_command}`
#    puts result unless result.strip.empty?

#    puts 'Generating ProfilesRolesScaffold...'
#    result = `#{ProfilesRolesScaffold.new.generate_command}`
#    puts result unless result.strip.empty?

#    puts 'Generating ProfileScaffold...'
#    result = `#{ProfileScaffold.new.generate_command}`
#    puts result unless result.strip.empty?

#    puts 'Generating GroupsProfilesScaffold...'
#    result = `#{GroupsProfilesScaffold.new.generate_command}`
#    puts result unless result.strip.empty?

#    puts 'Generating GroupScaffold...'
#    result = `#{GroupScaffold.new.generate_command}`
#    puts result unless result.strip.empty?

#    puts 'Generating UsersGroupsScaffold...'
#    result = `#{UsersGroupsScaffold.new.generate_command}`
#    puts result unless result.strip.empty?

#    puts 'Generating UserScaffold...'
#    result = `#{UserScaffold.new.generate_command}`
#    puts result unless result.strip.empty?

    puts 'Finished generate:core task!'
  end
end
