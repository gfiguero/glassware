# frozen_string_literal: true

class UsersGroupsScaffold
  BASE_COMMAND = 'rails g scaffold aim/core/users_groups'

  FIELDS = [
    'group:references',
    'user:references',
    'created_at:datetime',
    'updated_at:datetime',
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND} #{FIELDS.join(' ')} --skip-migration"
  end

  def destroy_command
    @command = 'rails d scaffold aim/core/users_groups'
  end

  # If you ever want to print or access the command outside the class:
  attr_reader :command
end
