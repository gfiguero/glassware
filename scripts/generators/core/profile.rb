# frozen_string_literal: true

class ProfileScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold aim/core/profile'
  BASE_COMMAND_DESTROY = 'rails d scaffold aim/core/profile'

  FIELDS = [
    'name:string',
    'created_at:datetime',
    'updated_at:datetime',
    'description:text',
    'usage:string',
    'initial_role_ids:text',
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{FIELDS.join(' ')} --skip-migration"
  end

  def destroy_command
    @command = BASE_COMMAND_DESTROY
  end

  # If you ever want to print or access the command outside the class:
  attr_reader :command
end
