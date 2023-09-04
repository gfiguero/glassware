# frozen_string_literal: true

class ChecklistCategoryGroupScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold aim/checklist/ChecklistCategoryGroup'
  BASE_COMMAND_DESTROY = 'rails d scaffold aim/checklist/ChecklistCategoryGroup'

  FIELDS = [
    'group_id:integer',
    'checklist_category_id:integer',
    'created_at:datetime',
    'updated_at:datetime',
    'relation_kind:string'
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{FIELDS.join(' ')} --skip-migration"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY}"
  end

  # If you ever want to print or access the command outside the class:
  attr_reader :command
end
