# frozen_string_literal: true

class IncidentCategoryGroupScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold'
  BASE_COMMAND_DESTROY = 'rails d scaffold'
  CLASS_NAME = 'IncidentCategoryGroup'
  COMMAND_OPTIONS = '--skip-migration --force --v1_table_name aim_incident_category_groups'

  FIELDS = [
    'incident_category_id:integer',
    'group_id:integer',
    'created_at:datetime',
    'updated_at:datetime',
    'relation_kind:string'
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} aim/incidents/#{CLASS_NAME} #{FIELDS.join(' ')} #{COMMAND_OPTIONS}"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} aim/incidents/#{CLASS_NAME}"
  end

  attr_reader :command
end
