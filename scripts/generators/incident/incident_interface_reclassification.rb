# frozen_string_literal: true

class IncidentInterfaceReclassificationScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold'
  BASE_COMMAND_DESTROY = 'rails d scaffold'
  CLASS_NAME = 'IncidentInterfaceReclassification'
  COMMAND_OPTIONS = '--skip-migration --force --v1_table_name aim_incident_interface_reclassifications'

  FIELDS = [
    'incident_interface_id:integer',
    'incident_interface_classification_id:integer',
    'current:boolean',
    'created_at:datetime',
    'updated_at:datetime'
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} aim/incidents/#{CLASS_NAME} #{FIELDS.join(' ')} #{COMMAND_OPTIONS}"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} aim/incidents/#{CLASS_NAME}"
  end

  attr_reader :command
end
