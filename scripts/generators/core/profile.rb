# frozen_string_literal: true

class ProfileScaffold
  def generate_command
    command = 'rails g scaffold aim/core/profile '
    command = "#{command}name:string "
    command = "#{command}created_at:datetime "
    command = "#{command}updated_at:datetime "
    command = "#{command}description:text "
    command = "#{command}usage:string "
    command = "#{command}initial_role_ids:text "
    command = "#{command}--skip-migration "
    @command = command
  end

  def destroy_command
    command = 'rails d scaffold aim/core/profile '
    @command = command
  end
end
