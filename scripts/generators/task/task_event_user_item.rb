# frozen_string_literal: true

class TaskEventUserItemScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold'
  BASE_COMMAND_DESTROY = 'rails d scaffold'
  CLASS_NAME = 'TaskEventUserItem'
  COMMAND_OPTIONS = '--skip-migration --force --v1_table_name aim_task_event_user_items'

  FIELDS = [
    'event_user_id:integer',
    'verifiable_id:integer',
    'verifiable_type:string',
    'status:integer',
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
