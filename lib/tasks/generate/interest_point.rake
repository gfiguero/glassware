Dir[Rails.root.join('scripts/generators/interest_point/*.rb')].each { |file| require file }

namespace :generate do
  desc 'Generate InterestPoint Scaffolds for the project'
  task interest_point: :environment do
    puts 'Starting generator:interest_point task...'

    scaffolds = [
      "InterestPointMetadata",
      "InterestPointMetadataBinding",
      "InterestPointState",
      "InterestPointTranslation",
      "InterestPoint",
      "InterestPointsSupplier"
    ]

    scaffolds.each do |scaffold|
      puts "Generating #{scaffold}Scaffold..."
      system(Object.const_get("#{scaffold}Scaffold").new.generate_command)
    end

    puts 'Finished generator:interest_point task!'
  end
end
