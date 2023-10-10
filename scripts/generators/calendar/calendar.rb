# frozen_string_literal: true

class CalendarScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold'
  BASE_COMMAND_DESTROY = 'rails d scaffold'
  CLASS_NAME = 'Calendar'
  COMMAND_OPTIONS = '--skip-migration --force --v1_table_name aim_calendars'

  FIELDS = [
    'map_id:integer',
    'name:string',
    'non_business_days_weekly:boolean[]',
    'created_at:datetime',
    'updated_at:datetime'
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} Calendar/#{CLASS_NAME} #{FIELDS.join(' ')} #{COMMAND_OPTIONS}"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} Calendar/#{CLASS_NAME}"
  end

  attr_reader :command
end
