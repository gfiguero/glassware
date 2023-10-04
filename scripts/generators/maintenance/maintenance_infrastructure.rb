# frozen_string_literal: true

class MaintenanceInfrastructureScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold'
  BASE_COMMAND_DESTROY = 'rails d scaffold'
  CLASS_NAME = 'MaintenanceInfrastructure'
  COMMAND_OPTIONS = '--skip-migration --force --v1_table_name aim_maintenance_infrastructures'

  FIELDS = [
    'infrastructure_interface_id:integer',
    'manufacturer:string',
    'model:string',
    'price:integer',
    'qr_code:string',
    'purchase_date:datetime',
    'next_maintenance_date:datetime',
    'created_at:datetime',
    'updated_at:datetime',
    'map_id:integer',
    'qr_code_type:integer',
    'description:text',
    'layer_id:integer',
    'point:geometry',
    'polygons:geometry',
    'external_id:string',
    'slug:string',
    'deleted_at:datetime'
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{CLASS_NAME} #{FIELDS.join(' ')} #{COMMAND_OPTIONS}"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{CLASS_NAME}"
  end

  attr_reader :command
end
