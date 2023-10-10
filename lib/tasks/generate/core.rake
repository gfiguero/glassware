Dir[Rails.root.join('scripts/generators/core/*.rb')].each { |file| require file }

namespace :generate do
  desc 'generate core scaffolds for v1 model'
  task core: :environment do
    puts 'Starting generator:core task...'

    scaffolds = [
      "Map",
      "Role",
      "Profile",
      "Group",
      "User",
      "ProfilesRoles",
      "GroupsProfiles",
      "UsersGroups",
    ]

    scaffolds.each do |scaffold|
      puts "Generating #{scaffold}Scaffold..."
      system(Object.const_get("#{scaffold}Scaffold").new.generate_command)
    end

    puts 'Finished generate:core task!'
  end
end
