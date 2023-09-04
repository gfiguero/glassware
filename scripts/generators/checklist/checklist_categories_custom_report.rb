# frozen_string_literal: true

class ChecklistCategoriesCustomReportScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold ChecklistCategoriesCustomReport'
  BASE_COMMAND_DESTROY = 'rails d scaffold ChecklistCategoriesCustomReport'

  FIELDS = [
    'custom_report_id:integer',
    'checklist_category_id:integer'
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
