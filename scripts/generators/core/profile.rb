# frozen_string_literal: true

class ProfileScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold'
  BASE_COMMAND_DESTROY = 'rails d scaffold'
  CLASS_NAME = 'Profile'
  COMMAND_OPTIONS = '--skip-migration --force --v1_table_name aim_profiles'

  FIELDS = [
    'name:string',
    'created_at:datetime',
    'updated_at:datetime',
    'description:text',
    'usage:string',
    'initial_role_ids:text',
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{CLASS_NAME} #{FIELDS.join(' ')} #{COMMAND_OPTIONS}"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{CLASS_NAME}"
  end

  # If you ever want to print or access the command outside the class:
  attr_reader :command
end