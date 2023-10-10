# frozen_string_literal: true

class CalendarSubscriptionScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold'
  BASE_COMMAND_DESTROY = 'rails d scaffold'
  CLASS_NAME = 'CalendarSubscription'
  COMMAND_OPTIONS = '--skip-migration --force --v1_table_name aim_calendar_subscriptions'

  FIELDS = [
    'calendar_id:integer',
    'calendarable_id:integer',
    'calendarable_type:string'
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} Calendar/#{CLASS_NAME} #{FIELDS.join(' ')} #{COMMAND_OPTIONS}"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} Calendar/#{CLASS_NAME}"
  end

  attr_reader :command
end
