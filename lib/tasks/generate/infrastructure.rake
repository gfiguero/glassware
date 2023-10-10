Dir[Rails.root.join('scripts/generators/infrastructure/*.rb')].each { |file| require file }
Dir[Rails.root.join('scripts/generators/maintenance/*.rb')].each { |file| require file }

namespace :generate do
  desc 'Generate Infrastructure Scaffolds for the project'
  task infrastructure: :environment do
    puts 'Starting generator:infrastructure task...'

    scaffolds = [
      "Infrastructure",
      "InfrastructureConfig",
      "InfrastructureIncident",
      "MaintenanceInfrastructureCategory",
      "MaintenanceInfrastructureCategoryGroup",
      "MaintenanceInfrastructureInterface",
      "MaintenanceInfrastructureInterfaceGroup",
      "MaintenanceInfrastructureInterfaceSupplier",
      "MaintenanceInfrastructureMaintenance",
      "MaintenanceInfrastructureTextFieldInterface",
      "MaintenanceInfrastructureTextField",
      "MaintenanceInfrastructureWarranty",
      "MaintenanceInfrastructure",
      "MaintenanceScheduledMaintenance",
      "MaintenanceTask",
      "MaintenanceTaskTool",
      "MaintenanceTool",
      "MaintenanceWork"
    ]

    scaffolds.each do |scaffold|
      puts "Generating #{scaffold}Scaffold..."
      system(Object.const_get("#{scaffold}Scaffold").new.generate_command)
    end

    puts 'Finished generator:infrastructure task!'
  end
end
