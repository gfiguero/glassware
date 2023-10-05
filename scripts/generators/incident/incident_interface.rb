# frozen_string_literal: true

class IncidentInterfaceScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold'
  BASE_COMMAND_DESTROY = 'rails d scaffold'
  CLASS_NAME = 'IncidentInterface'
  COMMAND_OPTIONS = '--skip-migration --force --v1_table_name aim_incident_interfaces'

  FIELDS = [
    'incident_name:integer',
    'position:integer',
    'documents:boolean',
    'pictures:boolean',
    'description:integer',
    'comments:boolean',
    'map_id:integer',
    'created_at:datetime',
    'updated_at:datetime',
    'occurrence_date:integer',
    'name:string',
    'icon_file_name:string',
    'icon_content_type:string',
    'icon_file_size:integer',
    'icon_updated_at:datetime',
    'show_from_zoom:integer',
    'show_until_zoom:integer',
    'store:integer',
    'incident_category_id:integer',
    'alert_time:float',
    'user_description:text',
    'send_to_reporter:boolean',
    'infrastructure:integer',
    'supplier:integer',
    'deleted_at:datetime',
    'cost:integer',
    'pdf_template:string',
    'state_pdf_template:string',
    'service:integer'
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} aim/incidents/#{CLASS_NAME} #{FIELDS.join(' ')} #{COMMAND_OPTIONS}"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} aim/incidents/#{CLASS_NAME}"
  end

  attr_reader :command
end
