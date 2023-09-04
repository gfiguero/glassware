# frozen_string_literal: true

class ChecklistInterfaceGroupScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold ChecklistInterfaceGroup'
  BASE_COMMAND_DESTROY = 'rails d scaffold ChecklistInterfaceGroup'

  FIELDS = [
    'checklist_interface_id:integer {null: false}',
    'group_id:integer {null: false}',
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{FIELDS.join(' ')} --skip-migration"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY}"
  end

  attr_reader :command
end
