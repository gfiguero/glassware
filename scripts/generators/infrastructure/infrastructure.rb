# frozen_string_literal: true

class InfrastructureScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold aim/infrastructure/infrastructure'
  BASE_COMMAND_DESTROY = 'rails d scaffold aim/infrastructure/infrastructure'

  FIELDS = [
    'manufacturer:string',
    'model:string',
    'created_at:datetime',
    'updated_at:datetime',
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
