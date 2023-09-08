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
      result = `#{Object.const_get("#{scaffold}Scaffold").new.destroy_command}`
      puts result unless result.strip.empty?
    end

    puts 'Finished destroy:core task!'
  end
end
