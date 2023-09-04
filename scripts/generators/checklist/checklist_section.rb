# frozen_string_literal: true

class ChecklistSectionScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold aim/checklist/ChecklistSection'
  BASE_COMMAND_DESTROY = 'rails d scaffold aim/checklist/ChecklistSection'
  TABLE_NAME = 'aim_checklist_sections'

  FIELDS = [
    'checklist_section_interface_id:integer',
    'checklist_id:integer',
    'grade:decimal',
    'grade_weight:float',
    'grade_weight_percentage:float',
    'skipped:boolean',
    'rank:integer',
    'created_at:datetime',
    'updated_at:datetime',
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{TABLE_NAME} #{FIELDS.join(' ')} --skip-migration"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{TABLE_NAME}"
  end

  attr_reader :command
end
