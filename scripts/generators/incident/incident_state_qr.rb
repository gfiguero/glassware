# frozen_string_literal: true

class IncidentStateQrScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold'
  BASE_COMMAND_DESTROY = 'rails d scaffold'
  CLASS_NAME = 'IncidentStateQr'
  COMMAND_OPTIONS = '--skip-migration --force --v1_table_name aim_incident_state_qrs'

  FIELDS = [
    'incident_state_id:integer',
    'qr_code:string'
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} aim/incidents/#{CLASS_NAME} #{FIELDS.join(' ')} #{COMMAND_OPTIONS}"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} aim/incidents/#{CLASS_NAME}"
  end

  attr_reader :command
end
