# frozen_string_literal: true

class InterestPointMetadataBindingScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold'
  BASE_COMMAND_DESTROY = 'rails d scaffold'
  CLASS_NAME = 'InterestPointMetadataBinding'
  COMMAND_OPTIONS = '--skip-migration --force --v1_table_name aim_interest_point_metadata_bindings'

  FIELDS = [
    'interest_point_id:integer',
    'interest_point_metadata_id:integer',
    'interest_point_type:string',
    'interest_point_metadata_type:string',
    'created_at:datetime',
    'updated_at:datetime'
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{CLASS_NAME} #{FIELDS.join(' ')} #{COMMAND_OPTIONS}"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{CLASS_NAME}"
  end

  attr_reader :command
end
