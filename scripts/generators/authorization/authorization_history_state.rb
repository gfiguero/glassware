# frozen_string_literal: true

class AuthorizationHistoryStateScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold'
  BASE_COMMAND_DESTROY = 'rails d scaffold'
  CLASS_NAME = 'AuthorizationHistoryState'
  COMMAND_OPTIONS = '--skip-migration --force --v1_table_name aim_authorization_history_states'

  FIELDS = [
    'request_id:integer',
    'state:string',
    'state_translate:string',
    'date:datetime'
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{CLASS_NAME} #{FIELDS.join(' ')} #{COMMAND_OPTIONS}"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{CLASS_NAME}"
  end

  attr_reader :command
end
