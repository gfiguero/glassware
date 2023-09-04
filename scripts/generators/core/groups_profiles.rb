# frozen_string_literal: true

class GroupsProfilesScaffold
  BASE_COMMAND = 'rails g scaffold aim/core/groups_profiles'
  DESTROY_COMMAND = 'rails d scaffold aim/core/groups_profiles'
  TABLE_NAME = 'aim_groups_profiles'

  FIELDS = [
    'group:references',
    'profile:references',
    'created_at:datetime',
    'updated_at:datetime',
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND} #{TABLE_NAME} #{FIELDS.join(' ')} --skip-migration"
  end

  def destroy_command
    @command = "#{DESTROY_COMMAND} #{TABLE_NAME}"
  end

  # If you ever want to print or access the command outside the class:
  attr_reader :command
end
