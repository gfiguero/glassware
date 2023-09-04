# frozen_string_literal: true

class ChecklistGradeOptionScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold ChecklistGradeOption'
  BASE_COMMAND_DESTROY = 'rails d scaffold ChecklistGradeOption'

  FIELDS = [
    'checklist_step_interface_id:integer',
    'name:string',
    'grade:integer',
    'incident_interface_id:integer',
    'created_at:datetime',
    'updated_at:datetime',
    'comments:integer',
    'pictures:integer',
    'documents:integer',
    'deleted_at:datetime',
    'default_tag_for_incident_id:integer'
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
