# frozen_string_literal: true

class InfrastructureScaffold
  def generate_command
    command = 'rails g scaffold aim/maintenance/infrastructure '
    command = "#{command}manufacturer:string "
    command = "#{command}model:string "
    command = "#{command}created_at:datetime "
    command = "#{command}updated_at:datetime "
    command = "#{command}--skip-migration "
    @command = command
  end

  def destroy_command
    command = 'rails d scaffold aim/maintenance/infrastructure '
    @command = command
  end
end
