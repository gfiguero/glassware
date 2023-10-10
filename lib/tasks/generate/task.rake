Dir[Rails.root.join('scripts/generators/task/*.rb')].each { |file| require file }

namespace :generate do
  desc 'Generate Tasks Scaffolds for the project'
  task task: :environment do
    puts 'Starting generator:tasks task...'

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
      puts "Generating #{scaffold}Scaffold..."
      result = `#{Object.const_get("#{scaffold}Scaffold").new.generate_command}`
      puts result unless result.strip.empty?
    end

    puts 'Finished generator:tasks task!'
  end
end
