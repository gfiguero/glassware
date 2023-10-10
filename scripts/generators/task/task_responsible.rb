# frozen_string_literal: true

class TaskResponsibleScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold'
  BASE_COMMAND_DESTROY = 'rails d scaffold'
  CLASS_NAME = 'TaskResponsible'
  COMMAND_OPTIONS = '--skip-migration --force --v1_table_name aim_task_responsibles'

  FIELDS = [
    'task_id:integer',
    'completion_type:integer',
    'responsible_type:integer',
    'supervisable_id:integer',
    'supervisable_type:string',
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
