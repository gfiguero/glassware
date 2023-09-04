# frozen_string_literal: true

class ChecklistTagGradeWeightScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold aim/checklist/ChecklistTagGradeWeight'
  BASE_COMMAND_DESTROY = 'rails d scaffold aim/checklist/ChecklistTagGradeWeight'
  TABLE_NAME = 'aim_checklist_tag_grade_weights'

  FIELDS = [
    'checklist_id:integer',
    'tag_id:integer',
    'grade_weight:float',
    'grade:float'
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{TABLE_NAME} #{FIELDS.join(' ')} --skip-migration"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{TABLE_NAME}"
  end

  attr_reader :command
end
