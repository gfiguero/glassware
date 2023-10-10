Dir[Rails.root.join('scripts/generators/infrastructure/*.rb')].each { |file| require file }
Dir[Rails.root.join('scripts/generators/maintenance/*.rb')].each { |file| require file }

namespace :destroy do
  desc 'Destroy Infrastructure Scaffolds for the project'
  task infrastructure: :environment do
    puts 'Starting destroy:infrastructure task...'

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
      puts "Destroying #{scaffold}Scaffold..."
      system(Object.const_get("#{scaffold}Scaffold").new.destroy_command)
    end

    puts 'Finished destroy:infrastructure task!'
  end
end
