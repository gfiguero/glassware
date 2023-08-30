# frozen_string_literal: true

class TaskScaffold
  def generate_command
    command = 'rails g scaffold aim/task/task '
    command = "#{command}created_at:datetime "
    command = "#{command}updated_at:datetime "
    command = "#{command}--skip-migration "
    @command = command
  end

  def destroy_command
    command = 'rails d scaffold aim/task/task '
    @command = command
  end
end
