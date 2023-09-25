# frozen_string_literal: true

class ChecklistCategoryGroupScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold'
  BASE_COMMAND_DESTROY = 'rails d scaffold'
  CLASS_NAME = 'ChecklistCategoryGroup'
  COMMAND_OPTIONS = '--skip-migration --force --v1_table_name aim_checklist_category_groups'

  FIELDS = [
    'group_id:integer',
    'checklist_category_id:integer',
    'created_at:datetime',
    'updated_at:datetime',
    'relation_kind:string'
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{CLASS_NAME} #{FIELDS.join(' ')} #{COMMAND_OPTIONS}"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{CLASS_NAME}"
  end

  attr_reader :command
end
