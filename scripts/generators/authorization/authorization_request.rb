# frozen_string_literal: true

class AuthorizationRequestScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold'
  BASE_COMMAND_DESTROY = 'rails d scaffold'
  CLASS_NAME = 'AuthorizationRequest'
  COMMAND_OPTIONS = '--skip-migration --force --v1_table_name aim_authorization_requests'

  FIELDS = [
    'requester_id:integer',
    'request_type_id:integer',
    'interest_point_id:integer',
    'interest_point_type:string',
    'state:string',
    'from_time:datetime',
    'until_time:datetime',
    'from_time_num:integer',
    'until_time_num:integer',
    'created_at:datetime',
    'updated_at:datetime',
    'map_id:integer',
    'requester_kind:integer',
    'requester_role:string',
    'requester_comments:text',
    'supplier_comments:text',
    'comments:text',
    'supplier_id:integer',
    'requester_identification:string',
    'requester_name:string',
    'requester_phone:string',
    'requester_email:string',
    'authorized_at:datetime',
    'for_mall:boolean',
    'payroll_workers_file_name:string',
    'payroll_workers_content_type:string',
    'payroll_workers_file_size:integer',
    'payroll_workers_updated_at:datetime',
    'slug:string',
    'start_working_hour:time',
    'end_working_hour:time',
    'mixed:integer',
    'requester_type:integer',
    'deleted_at:datetime',
    'completion_time:datetime'
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{CLASS_NAME} #{FIELDS.join(' ')} #{COMMAND_OPTIONS}"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{CLASS_NAME}"
  end

  attr_reader :command
end
