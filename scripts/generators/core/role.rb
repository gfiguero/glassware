# frozen_string_literal: true

class RoleScaffold
  def generate_command
    command = 'rails g scaffold aim/core/role '
    command = "#{command}name:string "
    command = "#{command}created_at:datetime "
    command = "#{command}updated_at:datetime "
    command = "#{command}usage:string "
    command = "#{command}--skip-migration "
    @command = command
  end

  def destroy_command
    command = 'rails d scaffold aim/core/role '
    @command = command
  end
end
