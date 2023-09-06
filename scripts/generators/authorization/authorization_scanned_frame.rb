# frozen_string_literal: true

class AuthorizationScannedFrameScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold authorization/ScannedFrame'
  BASE_COMMAND_DESTROY = 'rails d scaffold authorization/ScannedFrame'
  TABLE_NAME = 'aim_authorization_scanned_frames'

  FIELDS = [
    'created_at:date',
    'map_id:integer',
    'frame_text:text',
    'format_type:string'
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{TABLE_NAME} #{FIELDS.join(' ')} --skip-migration"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{TABLE_NAME}"
  end

  attr_reader :command
end
