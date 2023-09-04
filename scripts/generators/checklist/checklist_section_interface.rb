# frozen_string_literal: true

class ChecklistSectionInterfaceScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold aim/checklist/ChecklistSectionInterface'
  BASE_COMMAND_DESTROY = 'rails d scaffold aim/checklist/ChecklistSectionInterface'
  TABLE_NAME = 'aim_checklist_section_interfaces'

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
    @command = "#{BASE_COMMAND_GENERATE} #{TABLE_NAME} #{FIELDS.join(' ')} --skip-migration"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{TABLE_NAME}"
  end

  attr_reader :command
end
