# frozen_string_literal: true

class IncidentInterfaceSupplierServiceTypeScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold'
  BASE_COMMAND_DESTROY = 'rails d scaffold'
  CLASS_NAME = 'IncidentInterfaceSupplierServiceType'
  COMMAND_OPTIONS = '--skip-migration --force --v1_table_name aim_incident_interfaces_supplier_service_types'

  FIELDS = [
    'incident_interface_id:integer',
    'supplier_service_type_id:integer'
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} aim/incidents/#{CLASS_NAME} #{FIELDS.join(' ')} #{COMMAND_OPTIONS}"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} aim/incidents/#{CLASS_NAME}"
  end

  attr_reader :command
end
