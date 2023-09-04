# frozen_string_literal: true

class ChecklistAnswerOptionsTagScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold aim/checklist/ChecklistAnswerOptionsTag'
  BASE_COMMAND_DESTROY = 'rails d scaffold aim/checklist/ChecklistAnswerOptionsTag'

  FIELDS = [
    'checklist_tag_id:integer',
    'checklist_answer_option_id:integer',
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
