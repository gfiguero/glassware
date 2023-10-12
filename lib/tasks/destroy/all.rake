namespace :destroy do
  desc 'Run all destroy tasks'
  task all: :environment do
    Dir[Rails.root.join('lib/tasks/destroy/*.rake')].each do |file|
      task_name = File.basename(file, '.rake')
      next if task_name == 'all' # Skip the all task

      # Formulate the full task name based on the file name
      full_task_name = "destroy:#{task_name}"
      puts "Running task #{full_task_name}..."

      Rake::Task[full_task_name].invoke
      Rake::Task[full_task_name].reenable
    end
  end
end
