# frozen_string_literal: true

class TaskRecurrentScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold'
  BASE_COMMAND_DESTROY = 'rails d scaffold'
  CLASS_NAME = 'TaskRecurrent'
  COMMAND_OPTIONS = '--skip-migration --force --v1_table_name aim_task_recurrents'

  FIELDS = [
    'task_id:integer',
    'recurrence_type:integer',
    'start_date:date',
    'time_repeat:integer',
    'end_date:date',
    'finish_type:integer',
    'all_day:boolean',
    'current_repeats:integer',
    'sunday:boolean',
    'monday:boolean',
    'tuesday:boolean',
    'wednesday:boolean',
    'thursday:boolean',
    'friday:boolean',
    'saturday:boolean',
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
