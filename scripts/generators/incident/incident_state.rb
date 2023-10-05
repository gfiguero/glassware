# frozen_string_literal: true

class IncidentStateScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold'
  BASE_COMMAND_DESTROY = 'rails d scaffold'
  CLASS_NAME = 'IncidentState'
  COMMAND_OPTIONS = '--skip-migration --force --v1_table_name aim_incident_states'

  FIELDS = [
    'incident_id:integer',
    'state_interface_id:integer',
    'created_at:datetime',
    'updated_at:datetime',
    'user_id:integer',
    'supplier_id:integer'
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} aim/incidents/#{CLASS_NAME} #{FIELDS.join(' ')} #{COMMAND_OPTIONS}"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} aim/incidents/#{CLASS_NAME}"
  end

  attr_reader :command
end
