# frozen_string_literal: true

class TaskScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold'
  BASE_COMMAND_DESTROY = 'rails d scaffold'
  CLASS_NAME = 'Task'
  COMMAND_OPTIONS = '--skip-migration --force --v1_table_name aim_tasks'

  FIELDS = [
    'name:string',
    'start_time:datetime',
    'end_time:datetime',
    'description:text',
    'color:string',
    'time_zone:string',
    'photo_type:integer',
    'attachment_type:integer',
    'comment_type:integer',
    'status:integer',
    'is_all_day:boolean',
    'is_recurrent:boolean',
    'created_at:datetime',
    'updated_at:datetime',
    'execute_future_event:boolean'
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{CLASS_NAME} #{FIELDS.join(' ')} #{COMMAND_OPTIONS}"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{CLASS_NAME}"
  end

  attr_reader :command
end
