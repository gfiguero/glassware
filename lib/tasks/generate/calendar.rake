Dir[Rails.root.join('scripts/generators/calendar/*.rb')].each { |file| require file }

namespace :generate do
  desc 'Generate Calendar Scaffolds for the project'
  task calendar: :environment do
    puts 'Starting generate:calendar task...'

    scaffolds = [
      "CalendarSubscriptionMap",
      "CalendarSubscription",
      "Calendar"
    ]

    scaffolds.each do |scaffold|
      puts "Generating #{scaffold}Scaffold..."
      system(Object.const_get("#{scaffold}Scaffold").new.generate_command)
    end

    puts 'Finished generate:calendar task!'
  end
end
