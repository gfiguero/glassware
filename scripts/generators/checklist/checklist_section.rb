# frozen_string_literal: true

class ChecklistSectionScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold'
  BASE_COMMAND_DESTROY = 'rails d scaffold'
  CLASS_NAME = 'ChecklistSection'
  COMMAND_OPTIONS = '--skip-migration --force --v1_table_name aim_checklist_sections'

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
    @command = "#{BASE_COMMAND_GENERATE} #{CLASS_NAME} #{FIELDS.join(' ')} #{COMMAND_OPTIONS}"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{CLASS_NAME}"
  end

  attr_reader :command
end
