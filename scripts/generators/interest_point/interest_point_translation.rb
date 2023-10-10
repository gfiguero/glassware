# frozen_string_literal: true

class InterestPointTranslationScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold'
  BASE_COMMAND_DESTROY = 'rails d scaffold'
  CLASS_NAME = 'InterestPointTranslation'
  COMMAND_OPTIONS = '--skip-migration --force --v1_table_name aim_interest_point_translations'

  FIELDS = [
    'aim_interest_point_id:integer',
    'locale:string',
    'created_at:datetime',
    'updated_at:datetime',
    'description:text',
    'specialty:string',
    'average_consumption:string',
    'schedule:string',
    'smoker_space:string'
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{CLASS_NAME} #{FIELDS.join(' ')} #{COMMAND_OPTIONS}"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{CLASS_NAME}"
  end

  attr_reader :command
end
