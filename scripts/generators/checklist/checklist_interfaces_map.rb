# frozen_string_literal: true

class ChecklistInterfaceMapScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold ChecklistInterfaceMap'
  BASE_COMMAND_DESTROY = 'rails d scaffold ChecklistInterfaceMap'

  FIELDS = [
    'checklist_interface_id:integer',
    'map_id:integer',
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{FIELDS.join(' ')} --skip-migration"
  end

  def destroy_command
    @command = BASE_COMMAND_DESTROY
  end

  attr_reader :command
end
