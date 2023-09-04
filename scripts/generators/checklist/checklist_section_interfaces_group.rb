# frozen_string_literal: true

class ChecklistSectionInterfaceGroupScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold aim/checklist/ChecklistSectionInterfaceGroup'
  BASE_COMMAND_DESTROY = 'rails d scaffold aim/checklist/ChecklistSectionInterfaceGroup'
  TABLE_NAME = 'aim_checklist_section_interfaces_groups'

  FIELDS = [
    'checklist_section_interface_id:integer',
    'group_id:integer'
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{TABLE_NAME} #{FIELDS.join(' ')} --skip-migration"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{TABLE_NAME}"
  end

  attr_reader :command
end
