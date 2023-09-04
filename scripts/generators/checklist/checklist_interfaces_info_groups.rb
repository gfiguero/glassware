# frozen_string_literal: true

class ChecklistInterfaceInfoGroupScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold ChecklistInterfaceInfoGroup'
  BASE_COMMAND_DESTROY = 'rails d scaffold ChecklistInterfaceInfoGroup'

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
