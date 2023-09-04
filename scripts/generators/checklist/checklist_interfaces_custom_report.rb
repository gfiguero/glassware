# frozen_string_literal: true

class ChecklistInterfaceCustomReportScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold aim/checklist/ChecklistInterfaceCustomReport'
  BASE_COMMAND_DESTROY = 'rails d scaffold aim/checklist/ChecklistInterfaceCustomReport'
  TABLE_NAME = 'aim_checklist_interfaces_custom_reports'

  FIELDS = [
    'custom_report_id:integer',
    'checklist_interface_id:integer',
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{TABLE_NAME} #{FIELDS.join(' ')} --skip-migration"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{TABLE_NAME}"
  end

  attr_reader :command
end
