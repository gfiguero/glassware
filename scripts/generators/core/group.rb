# frozen_string_literal: true

class GroupScaffold
  def generate_command
    command = 'rails g scaffold aim/core/group '
    command = "#{command}name:string "
    command = "#{command}created_at:datetime "
    command = "#{command}updated_at:datetime "
    command = "#{command}kind:string "
    command = "#{command}--skip-migration "
    @command = command
  end

  def destroy_command
    command = 'rails d scaffold aim/core/group '
    @command = command
  end
end
