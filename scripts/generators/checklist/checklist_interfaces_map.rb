# frozen_string_literal: true

class ChecklistInterfaceMapScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold aim/checklist/ChecklistInterfaceMap'
  BASE_COMMAND_DESTROY = 'rails d scaffold aim/checklist/ChecklistInterfaceMap'
  TABLE_NAME = 'aim_checklist_interfaces_maps'

  FIELDS = [
    'checklist_interface_id:integer',
    'map_id:integer',
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{TABLE_NAME} #{FIELDS.join(' ')} --skip-migration"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{TABLE_NAME}"
  end

  attr_reader :command
end
