Dir[Rails.root.join('scripts/generators/interest_point/*.rb')].each { |file| require file }

namespace :destroy do
  desc 'Destroy InterestPoint Scaffolds for the project'
  task interest_point: :environment do
    puts 'Starting destroyer:interest_point task...'

    scaffolds = [
      "InterestPointMetadata",
      "InterestPointMetadataBinding",
      "InterestPointState",
      "InterestPointTranslation",
      "InterestPoint",
      "InterestPointsSupplier"
    ]

    scaffolds.each do |scaffold|
      puts "Destroying #{scaffold}Scaffold..."
      system(Object.const_get("#{scaffold}Scaffold").new.destroy_command)
    end

    puts 'Finished destroyer:interest_point task!'
  end
end
