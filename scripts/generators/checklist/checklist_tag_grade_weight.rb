# frozen_string_literal: true

class ChecklistTagGradeWeightScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold'
  BASE_COMMAND_DESTROY = 'rails d scaffold'
  CLASS_NAME = 'ChecklistTagGradeWeight'
  COMMAND_OPTIONS = '--skip-migration --force --v1_table_name aim_checklist_tag_grade_weights'

  FIELDS = [
    'checklist_id:integer',
    'tag_id:integer',
    'grade_weight:float',
    'grade:float'
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{CLASS_NAME} #{FIELDS.join(' ')} #{COMMAND_OPTIONS}"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{CLASS_NAME}"
  end

  attr_reader :command
end
