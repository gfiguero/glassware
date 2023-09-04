# frozen_string_literal: true

class ChecklistInterfaceInfoGroupScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold aim/checklist/ChecklistInterfaceInfoGroup'
  BASE_COMMAND_DESTROY = 'rails d scaffold aim/checklist/ChecklistInterfaceInfoGroup'

  FIELDS = [
    'checklist_interface_id:integer',
    'group_id:integer',
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{FIELDS.join(' ')} --skip-migration"
  end

  def destroy_command
    @command = BASE_COMMAND_DESTROY
  end

  attr_reader :command
end
