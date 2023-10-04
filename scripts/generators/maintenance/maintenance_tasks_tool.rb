# frozen_string_literal: true

class MaintenanceTaskToolScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold'
  BASE_COMMAND_DESTROY = 'rails d scaffold'
  CLASS_NAME = 'MaintenanceTaskTool'
  COMMAND_OPTIONS = '--skip-migration --force --v1_table_name aim_maintenance_tasks_tools'

  FIELDS = [
    'maintenance_task_id:integer',
    'maintenance_tool_id:integer',
    'replacement_tool_id:integer',
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
