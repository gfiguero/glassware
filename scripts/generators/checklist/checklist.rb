# frozen_string_literal: true

class ChecklistScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold'
  BASE_COMMAND_DESTROY = 'rails d scaffold'
  CLASS_NAME = 'Checklist'
  COMMAND_OPTIONS = '--skip-migration --force --v1_table_name aim_checklists'

  FIELDS = [
    'checklist_interface_id:integer',
    'map_id:integer',
    'store_id:integer',
    'user_id:integer',
    'global_grade:decimal',
    'started_at:datetime',
    'created_at:datetime',
    'updated_at:datetime',
    'finished_at:datetime',
    'service_id:integer',
    'infrastructure_id:integer',
    'slug:string',
    'user_start_position:geometry',
    'user_finish_position:geometry',
    'grade_min:integer',
    'grade_max:integer',
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{CLASS_NAME} #{FIELDS.join(' ')} #{COMMAND_OPTIONS}"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{CLASS_NAME}"
  end

  attr_reader :command
end
