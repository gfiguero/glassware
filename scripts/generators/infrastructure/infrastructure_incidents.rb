# frozen_string_literal: true

class InfrastructureIncidentScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold'
  BASE_COMMAND_DESTROY = 'rails d scaffold'
  CLASS_NAME = 'InfrastructureIncident'
  COMMAND_OPTIONS = '--skip-migration --force --v1_table_name aim_infrastructure_incidents'

  FIELDS = [
    'infrastructure_id:integer',
    'maintainer_id:integer',
    'event:string',
    'comments:text',
    'solver_id:integer',
    'created_at:datetime',
    'updated_at:datetime',
    'state:string',
    'state_number:integer'
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{CLASS_NAME} #{FIELDS.join(' ')} #{COMMAND_OPTIONS}"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{CLASS_NAME}"
  end

  attr_reader :command
end
