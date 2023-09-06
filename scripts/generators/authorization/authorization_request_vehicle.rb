# frozen_string_literal: true

class AuthorizationRequestVehicleScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold authorization/RequestVehicle'
  BASE_COMMAND_DESTROY = 'rails d scaffold authorization/RequestVehicle'
  TABLE_NAME = 'aim_authorization_request_vehicles'

  FIELDS = [
    'request_id:integer',
    'vehicle_id:integer',
    'created_at:datetime',
    'updated_at:datetime'
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{TABLE_NAME} #{FIELDS.join(' ')} --skip-migration"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{TABLE_NAME}"
  end

  attr_reader :command
end
