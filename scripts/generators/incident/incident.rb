# frozen_string_literal: true

class IncidentScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold'
  BASE_COMMAND_DESTROY = 'rails d scaffold'
  CLASS_NAME = 'Incident'
  COMMAND_OPTIONS = '--skip-migration --force --v1_table_name aim_incidents'

  FIELDS = [
    'name:string',
    'description:text',
    'x:float',
    'y:float',
    'layer_id:integer',
    'occurrence_date:datetime',
    'incident_interface_id:integer',
    'created_at:datetime',
    'updated_at:datetime',
    'state:string',
    'map_id:integer',
    'user_id:integer',
    'lat:float',
    'lng:float',
    'address:string',
    'region:string',
    'municipality:string',
    'external_id:string',
    'incident_priority_id:integer',
    'incident_priority_name:string',
    'slug:string',
    'interest_point_id:integer',
    'interest_point_type:string',
    'current_state_id:integer',
    'current_state_interface_id:integer',
    'tag_id:integer',
    'affected_item_id:integer',
    'affected_item_type:string',
    'finished_by_user:integer',
    'finished_at:datetime',
    'expires_at:datetime',
    'infrastructure_id:integer',
    'supplier_id:integer',
    'extra_data:hstore',
    'from_checklist:boolean',
    'checklist_step_interface_id:integer',
    'checklist_id:integer',
    'checklist_slug:string',
    'checklist_step_slug:string',
    'sent_to_santafe:boolean',
    'near_distance_gis_layer_m:float',
    'deleted_at:datetime',
    'cost_center:string',
    'parent_state_id:integer',
    'service_id:integer'
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} aim/incidents/#{CLASS_NAME} #{FIELDS.join(' ')} #{COMMAND_OPTIONS}"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} aim/incidents/#{CLASS_NAME}"
  end

  attr_reader :command
end
