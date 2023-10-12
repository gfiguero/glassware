# frozen_string_literal: true

class InterestPointsSupplierScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold'
  BASE_COMMAND_DESTROY = 'rails d scaffold'
  CLASS_NAME = 'InterestPointsSupplier'
  COMMAND_OPTIONS = '--skip-migration --force --v1_table_name aim_interest_points_suppliers'

  FIELDS = [
    'interest_point_id:integer',
    'supplier_id:integer',
    'state:integer'
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{CLASS_NAME} #{FIELDS.join(' ')} #{COMMAND_OPTIONS}"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{CLASS_NAME}"
  end

  attr_reader :command
end
