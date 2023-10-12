# frozen_string_literal: true

class InterestPointStateScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold'
  BASE_COMMAND_DESTROY = 'rails d scaffold'
  CLASS_NAME = 'InterestPointState'
  COMMAND_OPTIONS = '--skip-migration --force --v1_table_name aim_interest_point_states'

  FIELDS = [
    'comment:string',
    'modified_at:datetime',
    'interest_point_id:integer',
    'state_id:integer',
    'created_at:datetime',
    'updated_at:datetime',
    'user_id:integer'
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{CLASS_NAME} #{FIELDS.join(' ')} #{COMMAND_OPTIONS}"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{CLASS_NAME}"
  end

  attr_reader :command
end
