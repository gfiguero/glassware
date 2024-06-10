Dir[Rails.root.join('scripts/generators/test/*.rb')].each { |file| require file }

namespace :generate do
  desc 'generate test scaffolds for v1 model'
  task test: :environment do
    puts 'Starting generator:test task...'

    scaffolds = [
      'TestArticle',
      'TestTag',
      'TestPost',
      'TestTagArticle'
    ]

    scaffolds.each do |scaffold|
      puts "Generating #{scaffold}Scaffold..."
      system(Object.const_get("#{scaffold}Scaffold").new.generate_command)
    end

    puts 'Finished generate:test task!'
  end
end
