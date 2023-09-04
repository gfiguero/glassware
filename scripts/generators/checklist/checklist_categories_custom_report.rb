# frozen_string_literal: true

class ChecklistCategoriesCustomReportScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold aim/checklist/ChecklistCategoriesCustomReport'
  BASE_COMMAND_DESTROY = 'rails d scaffold aim/checklist/ChecklistCategoriesCustomReport'
  TABLE_NAME = 'aim_checklist_categories_custom_reports'

  FIELDS = [
    'custom_report_id:integer',
    'checklist_category_id:integer'
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{TABLE_NAME} #{FIELDS.join(' ')} --skip-migration"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{TABLE_NAME}"
  end

  # If you ever want to print or access the command outside the class:
  attr_reader :command
end
