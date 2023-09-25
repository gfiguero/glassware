# frozen_string_literal: true

class AuthorizationScannedFrameScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold'
  BASE_COMMAND_DESTROY = 'rails d scaffold'
  CLASS_NAME = 'AuthorizationScannedFrame'
  COMMAND_OPTIONS = '--skip-migration --force --v1_table_name aim_authorization_scanned_frames'

  FIELDS = [
    'created_at:date',
    'map_id:integer',
    'frame_text:text',
    'format_type:string'
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{CLASS_NAME} #{FIELDS.join(' ')} #{COMMAND_OPTIONS}"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{CLASS_NAME}"
  end

  attr_reader :command
end
