Dir[Rails.root.join('scripts/generators/checklist/*.rb')].each { |file| require file }

namespace :generate do
  desc 'Generate Checklists Scaffolds for the project'
  task checklist: :environment do
    puts 'Starting generator:checklist task...'

    puts 'Generating ChecklistScaffold...'
    result = `#{ChecklistScaffold.new.generate_command}`
    puts result unless result.strip.empty?

    puts 'Generating ChecklistAnswerOptionScaffold...'
    result = `#{ChecklistAnswerOptionScaffold.new.generate_command}`
    puts result unless result.strip.empty?

    puts 'Generating ChecklistAnswerOptionsTagScaffold...'
    result = `#{ChecklistAnswerOptionsTagScaffold.new.generate_command}`
    puts result unless result.strip.empty?

    puts 'Generating ChecklistCategoryScaffold...'
    result = `#{ChecklistCategoryScaffold.new.generate_command}`
    puts result unless result.strip.empty?

    puts 'Generating ChecklistCategoriesCustomReportScaffold...'
    result = `#{ChecklistCategoriesCustomReportScaffold.new.generate_command}`
    puts result unless result.strip.empty?

    puts 'Generating ChecklistCategoryGroupScaffold...'
    result = `#{ChecklistCategoryGroupScaffold.new.generate_command}`
    puts result unless result.strip.empty?

    puts 'Generating ChecklistGradeOptionScaffold...'
    result = `#{ChecklistGradeOptionScaffold.new.generate_command}`
    puts result unless result.strip.empty?

    puts 'Generating ChecklistInterfaceScaffold...'
    result = `#{ChecklistInterfaceScaffold.new.generate_command}`
    puts result unless result.strip.empty?

    puts 'Generating ChecklistInterfaceConceptScaffold...'
    result = `#{ChecklistInterfaceConceptScaffold.new.generate_command}`
    puts result unless result.strip.empty?

    puts 'Generating ChecklistInterfaceCustomReportScaffold...'
    result = `#{ChecklistInterfaceCustomReportScaffold.new.generate_command}`
    puts result unless result.strip.empty?

    puts 'Generating ChecklistInterfaceGroupScaffold...'
    result = `#{ChecklistInterfaceGroupScaffold.new.generate_command}`
    puts result unless result.strip.empty?

    puts 'Generating ChecklistInterfaceInfoGroupScaffold...'
    result = `#{ChecklistInterfaceInfoGroupScaffold.new.generate_command}`
    puts result unless result.strip.empty?

    puts 'Generating ChecklistInterfaceMapScaffold...'
    result = `#{ChecklistInterfaceMapScaffold.new.generate_command}`
    puts result unless result.strip.empty?

    puts 'Generating ChecklistSectionScaffold...'
    result = `#{ChecklistSectionScaffold.new.generate_command}`
    puts result unless result.strip.empty?

    puts 'Generating ChecklistSectionInterfaceScaffold...'
    result = `#{ChecklistSectionInterfaceScaffold.new.generate_command}`
    puts result unless result.strip.empty?

    puts 'Generating ChecklistSectionInterfaceGroupScaffold...'
    result = `#{ChecklistSectionInterfaceGroupScaffold.new.generate_command}`
    puts result unless result.strip.empty?

    puts 'Generating ChecklistStepScaffold...'
    result = `#{ChecklistStepScaffold.new.generate_command}`
    puts result unless result.strip.empty?

    puts 'Generating ChecklistStepChecklistTagScaffold...'
    result = `#{ChecklistStepChecklistTagScaffold.new.generate_command}`
    puts result unless result.strip.empty?

    puts 'Generating ChecklistStepInterfaceScaffold...'
    result = `#{ChecklistStepInterfaceScaffold.new.generate_command}`
    puts result unless result.strip.empty?

    puts 'Generating ChecklistStepInterfaceChecklistTagScaffold...'
    result = `#{ChecklistStepInterfaceChecklistTagScaffold.new.generate_command}`
    puts result unless result.strip.empty?

    puts 'Generating ChecklistStepInterfaceInfrastructureInterfaceScaffold...'
    result = `#{ChecklistStepInterfaceInfrastructureInterfaceScaffold.new.generate_command}`
    puts result unless result.strip.empty?

    puts 'Generating ChecklistTagScaffold...'
    result = `#{ChecklistTagScaffold.new.generate_command}`
    puts result unless result.strip.empty?

    puts 'Generating ChecklistTagGradeWeightScaffold...'
    result = `#{ChecklistTagGradeWeightScaffold.new.generate_command}`
    puts result unless result.strip.empty?

    puts 'Finished generator:checklist task!'
  end
end
