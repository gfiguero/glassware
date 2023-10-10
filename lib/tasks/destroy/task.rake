Dir[Rails.root.join('scripts/generators/task/*.rb')].each { |file| require file }

namespace :destroy do
  desc 'Destroy Tasks Scaffolds for the project'
  task task: :environment do
    puts 'Starting destroyer:tasks task...'

    scaffolds = [
      "TaskChecklistInterface",
      "TaskEventDay",
      "TaskEventUserItem",
      "TaskEventUser",
      "TaskEvent",
      "TaskExternalLink",
      "TaskNotification",
      "TaskResponsiblesGroup",
      "TaskResponsiblesUser",
      "TaskRecurrent",
      "TaskResponsible",
      "Task"
    ]

    scaffolds.each do |scaffold|
      puts "Destroying #{scaffold}Scaffold..."
      result = `#{Object.const_get("#{scaffold}Scaffold").new.destroy_command}`
      puts result unless result.strip.empty?
    end

    puts 'Finished destroyer:tasks task!'
  end
end
