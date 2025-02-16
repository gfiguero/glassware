# frozen_string_literal: true

class ProfilesRolesScaffold
  BASE_COMMAND_GENERATE = 'rails g model'
  BASE_COMMAND_DESTROY = 'rails d scaffold'
  CLASS_NAME = 'ProfilesRole'
  COMMAND_OPTIONS = '--skip-migration --force --v1_table_name aim_profiles_roles'

  FIELDS = [
    'role:references',
    'profile:references',
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