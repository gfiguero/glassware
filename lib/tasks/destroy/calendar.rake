Dir[Rails.root.join('scripts/generators/calendar/*.rb')].each { |file| require file }

namespace :destroy do
  desc 'Destroy Calendar Scaffolds for the project'
  task calendar: :environment do
    puts 'Starting destroy:calendar task...'

    scaffolds = [
      "CalendarSubscriptionMap",
      "CalendarSubscription",
      "Calendar"
    ]

    scaffolds.each do |scaffold|
      puts "Destroying #{scaffold}Scaffold..."
      result = `#{Object.const_get("#{scaffold}Scaffold").new.destroy_command}`
      puts result unless result.strip.empty?
    end

    puts 'Finished destroy:calendar task!'
  end
end
