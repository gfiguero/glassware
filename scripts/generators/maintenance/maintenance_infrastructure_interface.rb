# frozen_string_literal: true

class MaintenanceInfrastructureInterfaceScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold'
  BASE_COMMAND_DESTROY = 'rails d scaffold'
  CLASS_NAME = 'MaintenanceInfrastructureInterface'
  COMMAND_OPTIONS = '--skip-migration --force --v1_table_name aim_maintenance_infrastructure_interfaces'

  FIELDS = [
    'name:string',
    'icon_file_name:string',
    'icon_content_type:string',
    'icon_file_size:integer',
    'icon_updated_at:datetime',
    'description:integer',
    'price:integer',
    'infrastructure_category_id:integer',
    'maintenance_interval:integer',
    'map_id:integer',
    'created_at:datetime',
    'updated_at:datetime',
    'position:integer',
    'geometry:integer',
    'approaching_maintenance_days:integer',
    'category_id:integer',
    'deleted_at:datetime',
    'm_purchase_order_required:boolean',
    'm_quote_number_required:boolean',
    'm_net_amount_required:boolean'
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{CLASS_NAME} #{FIELDS.join(' ')} #{COMMAND_OPTIONS}"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{CLASS_NAME}"
  end

  attr_reader :command
end
