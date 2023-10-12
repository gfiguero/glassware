# frozen_string_literal: true

class TaskNotificationScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold'
  BASE_COMMAND_DESTROY = 'rails d scaffold'
  CLASS_NAME = 'TaskNotification'
  COMMAND_OPTIONS = '--skip-migration --force --v1_table_name aim_task_notifications'

  FIELDS = [
    'task_id:integer',
    'anticipation_time_value:integer',
    'anticipation_time_type:integer',
    'notification_type:integer',
    'trigger_id:integer',
    'anticipation_sign_type:integer',
    'anticipation_condition_type:integer'
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{CLASS_NAME} #{FIELDS.join(' ')} #{COMMAND_OPTIONS}"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{CLASS_NAME}"
  end

  attr_reader :command
end
