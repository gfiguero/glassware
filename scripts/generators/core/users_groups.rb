# frozen_string_literal: true

class UserGroupScaffold
  BASE_COMMAND_GENERATE = 'rails g model'
  BASE_COMMAND_DESTROY = 'rails d scaffold'
  CLASS_NAME = 'UserGroup'
  COMMAND_OPTIONS = '--skip-migration --force --v1_table_name admin_groups'

  FIELDS = [
    'group:references',
    'groupable:references{polymorphic}',
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
