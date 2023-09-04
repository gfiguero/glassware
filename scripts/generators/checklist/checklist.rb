# frozen_string_literal: true

class ChecklistScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold aim/checklist/checklist'
  BASE_COMMAND_DESTROY = 'rails d scaffold aim/checklist/checklist'

  FIELDS = [
    'checklist_interface_id:integer{null:false}',
    'map_id:integer{null:false}',
    'store_id:integer',
    'user_id:integer{null:false}',
    'global_grade:decimal',
    'started_at:datetime',
    'created_at:datetime{null:false}',
    'updated_at:datetime{null:false}',
    'finished_at:datetime',
    'service_id:integer',
    'infrastructure_id:integer',
    'slug:string',
    'user_start_position:geometry{srid:0,type:st_point}',
    'user_finish_position:geometry{srid:0,type:st_point}',
    'grade_min:integer',
    'grade_max:integer',
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{FIELDS.join(' ')} --skip-migration"
  end

  def destroy_command
    @command = BASE_COMMAND_DESTROY
  end

  # If you ever want to print or access the command outside the class:
  attr_reader :command
end
