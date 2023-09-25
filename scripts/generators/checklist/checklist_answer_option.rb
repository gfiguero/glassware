# frozen_string_literal: true

class ChecklistAnswerOptionScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold'
  BASE_COMMAND_DESTROY = 'rails d scaffold'
  CLASS_NAME = 'ChecklistAnswerOption'
  COMMAND_OPTIONS = '--skip-migration --force --v1_table_name aim_checklist_answer_options'

  FIELDS = [
    'checklist_tag_id:integer',
    'name:string',
    'created_at:datetime',
    'updated_at:datetime',
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{CLASS_NAME} #{FIELDS.join(' ')} #{COMMAND_OPTIONS}"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{CLASS_NAME}"
  end

  attr_reader :command
end
