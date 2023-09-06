Dir[Rails.root.join('scripts/generators/core/*.rb')].each { |file| require file }

namespace :generate do
  desc 'generate core scaffolds for v1 model'
  task core: :environment do
    puts 'Starting generator:core task...'

    scaffolds = [
      "Map",
      "Role",
      "ProfilesRoles",
      "Profile",
      "GroupsProfiles",
      "Group",
      "UsersGroups",
      "User"
    ]

    scaffolds.each do |scaffold|
      puts "Generating #{scaffold}Scaffold..."
      result = `#{Object.const_get("#{scaffold}Scaffold").new.generate_command}`
      puts result unless result.strip.empty?
    end

    puts 'Finished generate:core task!'
  end
end
