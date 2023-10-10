Dir[Rails.root.join('scripts/generators/incident/*.rb')].each { |file| require file }

namespace :destroy do
  desc 'Destroy Incidents Scaffolds for the project'
  task incident: :environment do
    puts 'Starting destroy:incidents task...'

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
      puts "Destroying #{scaffold}Scaffold..."
      system(Object.const_get("#{scaffold}Scaffold").new.destroy_command)
    end

    puts 'Finished destroy:incidents task!'
  end
end
