# frozen_string_literal: true

class MaintenanceWorkScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold'
  BASE_COMMAND_DESTROY = 'rails d scaffold'
  CLASS_NAME = 'MaintenanceWork'
  COMMAND_OPTIONS = '--skip-migration --force --v1_table_name aim_maintenance_works'

  FIELDS = [
    'maintenance_task_id:integer',
    'reporter_id:integer',
    'description:text',
    'section:string',
    'duration:float',
    'expiration:integer',
    'scheduled_date:date',
    'scheduled_hour:string',
    'tools:text',
    'state:string',
    'created_at:datetime',
    'updated_at:datetime',
    'attachment_file_name:string',
    'attachment_content_type:string',
    'attachment_file_size:integer',
    'attachment_updated_at:datetime',
    'inventored:boolean',
    'finish_attachment_file_name:string',
    'finish_attachment_content_type:string',
    'finish_attachment_file_size:integer',
    'finish_attachment_updated_at:datetime',
    'state_number:integer'
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{CLASS_NAME} #{FIELDS.join(' ')} #{COMMAND_OPTIONS}"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{CLASS_NAME}"
  end

  attr_reader :command
end
