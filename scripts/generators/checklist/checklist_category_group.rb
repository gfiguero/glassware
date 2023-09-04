# frozen_string_literal: true

class ChecklistCategoryGroupScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold aim/checklist/ChecklistCategoryGroup'
  BASE_COMMAND_DESTROY = 'rails d scaffold aim/checklist/ChecklistCategoryGroup'
  TABLE_NAME = 'aim_checklist_category_groups'

  FIELDS = [
    'group_id:integer',
    'checklist_category_id:integer',
    'created_at:datetime',
    'updated_at:datetime',
    'relation_kind:string'
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
