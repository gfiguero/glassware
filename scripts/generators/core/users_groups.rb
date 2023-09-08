# frozen_string_literal: true

class UsersGroupsScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold'
  BASE_COMMAND_DESTROY = 'rails d scaffold'
  CLASS_NAME = 'UserGroups'
  COMMAND_OPTIONS = '--skip-migration --force --v1_table_name aim_users_groups'

  FIELDS = [
    'group:references',
    'user:references',
    'created_at:datetime',
    'updated_at:datetime',
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