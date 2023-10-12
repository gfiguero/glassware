Dir[Rails.root.join('scripts/generators/incident/*.rb')].each { |file| require file }

namespace :generate do
  desc 'Generate Incidents Scaffolds for the project'
  task incident: :environment do
    puts 'Starting generator:incidents task...'

    scaffolds = [
      "IncidentCategory",
      "IncidentCategoryGroup",
      "IncidentIncidentPriority",
      "IncidentInterfaceReclassification",
      "IncidentInterface",
      "IncidentInterfaceSupplierServiceType",
      "IncidentPriority",
      "IncidentStateQr",
      "IncidentState",
      "Incident"
    ]

    scaffolds.each do |scaffold|
      puts "Generating #{scaffold}Scaffold..."
      system(Object.const_get("#{scaffold}Scaffold").new.generate_command)
    end

    puts 'Finished generator:incidents task!'
  end
end
