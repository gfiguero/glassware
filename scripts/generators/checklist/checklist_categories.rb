# frozen_string_literal: true

class ChecklistCategoryScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold ChecklistCategory'
  BASE_COMMAND_DESTROY = 'rails d scaffold ChecklistCategory'

  FIELDS = [
    'map_id:integer',
    'name:string',
    'icon_file_name:string',
    'icon_content_type:string',
    'icon_file_size:integer',
    'icon_updated_at:datetime',
    'created_at:datetime',
    'updated_at:datetime',
    'filterable_by_auditor:boolean',
    'filterable_by_supervisor:boolean'
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{FIELDS.join(' ')} --skip-migration"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY}"
  end

  # If you ever want to print or access the command outside the class:
  attr_reader :command
end
