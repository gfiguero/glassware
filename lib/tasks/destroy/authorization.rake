Dir[Rails.root.join('scripts/destroyers/authorization/*.rb')].each { |file| require file }

namespace :destroy do
  desc 'Destroy Authorization Scaffolds for the project'
  task authorization: :environment do
    puts 'Starting destroyer:authorization task...'

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
      puts "Destroying #{scaffold}Scaffold..."
      system(Object.const_get("#{scaffold}Scaffold").new.destroy_command)
    end

    puts 'Finished destroyer:authorization task!'
  end
end
