Dir[Rails.root.join('scripts/generators/core/*.rb')].each { |file| require file }

namespace :destroy do
  desc 'Destroy core scaffolds for v1 model'
  task core: :environment do
    puts 'Starting destroy:core task...'

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
      puts "Destroying #{scaffold}Scaffold..."
      system(Object.const_get("#{scaffold}Scaffold").new.destroy_command)
    end

    puts 'Finished destroy:core task!'
  end
end
