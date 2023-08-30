# frozen_string_literal: true

class AuthorizationScaffold
  def generate_command
    command = 'rails g scaffold aim/authorization/authorization '
    command = "#{command}created_at:datetime "
    command = "#{command}updated_at:datetime "
    command = "#{command}--skip-migration "
    @command = command
  end

  def destroy_command
    command = 'rails d scaffold aim/authorization/authorization '
    @command = command
  end
end
