# frozen_string_literal: true

class ChecklistTagGradeWeightScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold aim/checklist/ChecklistTagGradeWeight'
  BASE_COMMAND_DESTROY = 'rails d scaffold aim/checklist/ChecklistTagGradeWeight'

  FIELDS = [
    'checklist_id:integer',
    'tag_id:integer',
    'grade_weight:float',
    'grade:float'
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{FIELDS.join(' ')} --skip-migration"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY}"
  end

  attr_reader :command
end
