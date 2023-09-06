# frozen_string_literal: true

class AuthorizationHistoryStateScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold aim/authorization/HistoryState'
  BASE_COMMAND_DESTROY = 'rails d scaffold aim/authorization/HistoryState'
  TABLE_NAME = 'aim_authorization_history_states'

  FIELDS = [
    'request_id:integer',
    'state:string',
    'state_translate:string',
    'date:datetime'
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{TABLE_NAME} #{FIELDS.join(' ')} --skip-migration"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{TABLE_NAME}"
  end

  attr_reader :command
end
