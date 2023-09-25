# frozen_string_literal: true

class AuthorizationRequestTypeNotificableGroupScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold'
  BASE_COMMAND_DESTROY = 'rails d scaffold'
  CLASS_NAME = 'AuthorizationRequestTypeNotificableGroup'
  COMMAND_OPTIONS = '--skip-migration --force --v1_table_name aim_authorization_request_type_notificable_groups'

  FIELDS = [
    'request_type_id:integer',
    'group_id:integer',
    'created_at:datetime',
    'updated_at:datetime',
    'deleted_at:datetime'
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{CLASS_NAME} #{FIELDS.join(' ')} #{COMMAND_OPTIONS}"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{CLASS_NAME}"
  end

  attr_reader :command
end
