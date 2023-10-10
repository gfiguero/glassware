# frozen_string_literal: true

class IncidentPriorityScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold'
  BASE_COMMAND_DESTROY = 'rails d scaffold'
  CLASS_NAME = 'IncidentPriority'
  COMMAND_OPTIONS = '--skip-migration --force --v1_table_name aim_incident_priorities'

  FIELDS = [
    'name:string',
    'level:integer',
    'map_id:integer',
    'color:string',
    'deleted_at:datetime'
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{CLASS_NAME} #{FIELDS.join(' ')} #{COMMAND_OPTIONS}"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{CLASS_NAME}"
  end

  attr_reader :command
end
