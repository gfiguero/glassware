Dir[Rails.root.join('scripts/generators/authorization/*.rb')].each { |file| require file }

namespace :generate do
  desc 'Generate Authorization Scaffolds for the project'
  task authorization: :environment do
    puts 'Starting generator:authorization task...'

    scaffolds = [
      "AuthorizationAuthorizedMap",
      "AuthorizationCurrentWorkerDocument",
      "AuthorizationGroupRequest",
      "AuthorizationHistoryState",
      "AuthorizationMapGroupRequest",
      "AuthorizationProvision",
      "AuthorizationProvisionRequestType",
      "AuthorizationProvisionSupplier",
      "AuthorizationRequest",
      "AuthorizationRequestDocumentTypeDocument",
      "AuthorizationRequestMap",
      "AuthorizationRequestType",
      "AuthorizationRequestTypeAuthorizingGroup",
      "AuthorizationRequestTypeDocumentType",
      "AuthorizationRequestTypeNotificableException",
      "AuthorizationRequestTypeNotificableGroup",
      "AuthorizationRequestTypeWorkerProfile",
      "AuthorizationRequestTypeWorkerProfileDocumentType",
      "AuthorizationRequestVehicle",
      "AuthorizationRequestWorker",
      "AuthorizationRequestWorkerableWorker",
      "AuthorizationScannedFrame",
      "AuthorizationWorkerDocument"
    ]

    scaffolds.each do |scaffold|
      puts "Generating #{scaffold}Scaffold..."
      system(Object.const_get("#{scaffold}Scaffold").new.generate_command)
    end

    puts 'Finished generator:authorization task!'
  end
end
