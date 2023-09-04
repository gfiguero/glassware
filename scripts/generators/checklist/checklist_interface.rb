# frozen_string_literal: true

class ChecklistInterfaceScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold aim/checklist/ChecklistInterface'
  BASE_COMMAND_DESTROY = 'rails d scaffold aim/checklist/ChecklistInterface'
  TABLE_NAME = 'aim_checklist_interfaces'

  FIELDS = [
    'name:string',
    'grade_min:integer',
    'grade_max:integer',
    'grade_interval:integer',
    'is_for_store:boolean',
    'created_at:datetime',
    'updated_at:datetime',
    'icon_file_name:string',
    'icon_content_type:string',
    'icon_file_size:integer',
    'icon_updated_at:datetime',
    'autogenerate_incident:boolean',
    'is_for_service:boolean',
    'is_for_infrastructure:boolean',
    'checklist_category_id:integer',
    'deleted_at:datetime',
    'user_start_position:integer',
    'user_finish_position:integer',
    'expiration_time:float',
    'is_section_weight:boolean',
    'show_skip_steps:boolean',
    'show_section_of_skip_steps:boolean',
    'show_pdf_skip_steps:boolean',
    'show_pdf_section_of_skip_steps:boolean',
    'aim_concept_id:integer',
    'add_photo_from_gallery:boolean',
    'show_pdf_unsuccess_step_only:boolean'
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{TABLE_NAME} #{FIELDS.join(' ')} --skip-migration"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{TABLE_NAME}"
  end

  # If you ever want to print or access the command outside the class:
  attr_reader :command
end
