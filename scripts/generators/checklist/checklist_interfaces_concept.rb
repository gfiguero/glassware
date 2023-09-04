# frozen_string_literal: true

class ChecklistInterfaceConceptScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold aim/checklist/ChecklistInterfaceConcept'
  BASE_COMMAND_DESTROY = 'rails d scaffold aim/checklist/ChecklistInterfaceConcept'
  TABLE_NAME = 'aim_checklist_interfaces_concepts'

  FIELDS = [
    'concept_id:integer',
    'checklist_interface_id:integer'
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{TABLE_NAME} #{FIELDS.join(' ')} --skip-migration"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{TABLE_NAME}"
  end

  # If you ever want to print or access the command outside the class:
  attr_reader :command
end
