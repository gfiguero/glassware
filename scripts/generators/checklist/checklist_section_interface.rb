# frozen_string_literal: true

class ChecklistSectionInterfaceScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold'
  BASE_COMMAND_DESTROY = 'rails d scaffold'
  CLASS_NAME = 'ChecklistSectionInterface'
  COMMAND_OPTIONS = '--skip-migration --force --v1_table_name aim_checklist_section_interfaces'

  FIELDS = [
    'checklist_interface_id:integer',
    'name:string',
    'grade_weight:float',
    'description:text',
    'rank:float',
    'deleted_at:datetime',
    'created_at:datetime',
    'updated_at:datetime'
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{CLASS_NAME} #{FIELDS.join(' ')} #{COMMAND_OPTIONS}"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{CLASS_NAME}"
  end

  attr_reader :command
end
