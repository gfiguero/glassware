Dir[Rails.root.join('scripts/generators/core/*.rb')].each { |file| require file }

namespace :generate do
  desc 'generate core scaffolds for v1 model'
  task core: :environment do
    puts 'Starting generator:core task...'

    scaffolds = [
      #"Map",
      #"User",
      #"UsersGroups",
      #"Group",
      #"GroupsProfiles",
      #"Profile",
      #"ProfilesRoles",
      "Role",
    ]

    scaffolds.each do |scaffold|
      puts "Generating #{scaffold}Scaffold..."
      system(Object.const_get("#{scaffold}Scaffold").new.generate_command)
    end

    puts 'Finished generate:core task!'
  end
end
