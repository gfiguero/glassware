# frozen_string_literal: true

class InterestPointMetadataScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold'
  BASE_COMMAND_DESTROY = 'rails d scaffold'
  CLASS_NAME = 'InterestPointMetadata'
  COMMAND_OPTIONS = '--skip-migration --force --v1_table_name aim_interest_point_metadata'

  FIELDS = [
    'title:string',
    'message:text',
    'stock:integer',
    'init_date:datetime',
    'end_date:datetime',
    'access_level:string',
    'category:string',
    'code:string',
    'category_id:integer',
    'still_valid:string',
    'interest_point_id:integer',
    'legal:text',
    'proximity_trigger_range:integer',
    'map_id:integer',
    'use_instructions:string',
    'type:string',
    'claimable:boolean',
    'created_at:datetime',
    'updated_at:datetime',
    'video_file_name:string',
    'video_content_type:string',
    'video_file_size:integer',
    'video_updated_at:datetime'
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{CLASS_NAME} #{FIELDS.join(' ')} #{COMMAND_OPTIONS}"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{CLASS_NAME}"
  end

  attr_reader :command
end
