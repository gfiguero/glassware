# frozen_string_literal: true

class ChecklistTagScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold'
  BASE_COMMAND_DESTROY = 'rails d scaffold'
  CLASS_NAME = 'ChecklistTag'
  COMMAND_OPTIONS = '--skip-migration --force --v1_table_name aim_checklist_tags'

  FIELDS = [
    'checklist_interface_id:integer',
    'name:string',
    'created_at:datetime',
    'updated_at:datetime',
    'deleted_at:datetime',
    'chosen_grade_option_name:string',
    'override_grade:integer',
    'override_checklist_tag_id:integer',
    'skipped:boolean',
    'tag_type:integer',
    'grade_weight:float',
    'rank:integer',
    'aim_concept_id:integer'
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{CLASS_NAME} #{FIELDS.join(' ')} #{COMMAND_OPTIONS}"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{CLASS_NAME}"
  end

  attr_reader :command
end
