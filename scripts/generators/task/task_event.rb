# frozen_string_literal: true

class TaskEventScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold'
  BASE_COMMAND_DESTROY = 'rails d scaffold'
  CLASS_NAME = 'TaskEvent'
  COMMAND_OPTIONS = '--skip-migration --force --v1_table_name aim_task_events'

  FIELDS = [
    'task_id:integer',
    'start_time:datetime',
    'end_time:datetime',
    'status:integer',
    'map_id:integer',
    'created_at:datetime',
    'updated_at:datetime',
    'event_day_id:integer'
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{CLASS_NAME} #{FIELDS.join(' ')} #{COMMAND_OPTIONS}"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{CLASS_NAME}"
  end

  attr_reader :command
end
