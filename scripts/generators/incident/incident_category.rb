# frozen_string_literal: true

class IncidentCategoryScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold'
  BASE_COMMAND_DESTROY = 'rails d scaffold'
  CLASS_NAME = 'IncidentCategory'
  COMMAND_OPTIONS = '--skip-migration --force --v1_table_name aim_incident_categories'

  FIELDS = [
    'map_id:integer',
    'name:string',
    'icon_file_name:string',
    'icon_content_type:string',
    'icon_file_size:integer',
    'icon_updated_at:datetime',
    'created_at:datetime',
    'updated_at:datetime',
    'external_id:integer'
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{CLASS_NAME} #{FIELDS.join(' ')} #{COMMAND_OPTIONS}"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{CLASS_NAME}"
  end

  attr_reader :command
end
