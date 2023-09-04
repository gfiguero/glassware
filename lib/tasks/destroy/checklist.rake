Dir[Rails.root.join('scripts/generators/checklist/*.rb')].each { |file| require file }

namespace :destroy do
  desc 'Destroy Checklists Scaffolds for the project'
  task checklist: :environment do
    puts 'Starting destroy:checklist task...'

    puts 'Destroying ChecklistScaffold...'
    result = `#{ChecklistScaffold.new.destroy_command}`
    puts result unless result.strip.empty?

    puts 'Destroying ChecklistAnswerOptionScaffold...'
    result = `#{ChecklistAnswerOptionScaffold.new.destroy_command}`
    puts result unless result.strip.empty?

    puts 'Destroying ChecklistAnswerOptionsTagScaffold...'
    result = `#{ChecklistAnswerOptionsTagScaffold.new.destroy_command}`
    puts result unless result.strip.empty?

    puts 'Destroying ChecklistCategoryScaffold...'
    result = `#{ChecklistCategoryScaffold.new.destroy_command}`
    puts result unless result.strip.empty?

    puts 'Destroying ChecklistCategoriesCustomReportScaffold...'
    result = `#{ChecklistCategoriesCustomReportScaffold.new.destroy_command}`
    puts result unless result.strip.empty?

    puts 'Destroying ChecklistCategoryGroupScaffold...'
    result = `#{ChecklistCategoryGroupScaffold.new.destroy_command}`
    puts result unless result.strip.empty?

    puts 'Destroying ChecklistGradeOptionScaffold...'
    result = `#{ChecklistGradeOptionScaffold.new.destroy_command}`
    puts result unless result.strip.empty?

    puts 'Destroying ChecklistInterfaceScaffold...'
    result = `#{ChecklistInterfaceScaffold.new.destroy_command}`
    puts result unless result.strip.empty?

    puts 'Destroying ChecklistInterfaceConceptScaffold...'
    result = `#{ChecklistInterfaceConceptScaffold.new.destroy_command}`
    puts result unless result.strip.empty?

    puts 'Destroying ChecklistInterfaceCustomReportScaffold...'
    result = `#{ChecklistInterfaceCustomReportScaffold.new.destroy_command}`
    puts result unless result.strip.empty?

    puts 'Destroying ChecklistInterfaceGroupScaffold...'
    result = `#{ChecklistInterfaceGroupScaffold.new.destroy_command}`
    puts result unless result.strip.empty?

    puts 'Destroying ChecklistInterfaceInfoGroupScaffold...'
    result = `#{ChecklistInterfaceInfoGroupScaffold.new.destroy_command}`
    puts result unless result.strip.empty?

    puts 'Destroying ChecklistInterfaceMapScaffold...'
    result = `#{ChecklistInterfaceMapScaffold.new.destroy_command}`
    puts result unless result.strip.empty?

    puts 'Destroying ChecklistSectionScaffold...'
    result = `#{ChecklistSectionScaffold.new.destroy_command}`
    puts result unless result.strip.empty?

    puts 'Destroying ChecklistSectionInterfaceScaffold...'
    result = `#{ChecklistSectionInterfaceScaffold.new.destroy_command}`
    puts result unless result.strip.empty?

    puts 'Destroying ChecklistSectionInterfaceGroupScaffold...'
    result = `#{ChecklistSectionInterfaceGroupScaffold.new.destroy_command}`
    puts result unless result.strip.empty?

    puts 'Destroying ChecklistStepScaffold...'
    result = `#{ChecklistStepScaffold.new.destroy_command}`
    puts result unless result.strip.empty?

    puts 'Destroying ChecklistStepChecklistTagScaffold...'
    result = `#{ChecklistStepChecklistTagScaffold.new.destroy_command}`
    puts result unless result.strip.empty?

    puts 'Destroying ChecklistStepInterfaceScaffold...'
    result = `#{ChecklistStepInterfaceScaffold.new.destroy_command}`
    puts result unless result.strip.empty?

    puts 'Destroying ChecklistStepInterfaceChecklistTagScaffold...'
    result = `#{ChecklistStepInterfaceChecklistTagScaffold.new.destroy_command}`
    puts result unless result.strip.empty?

    puts 'Destroying ChecklistStepInterfaceInfrastructureInterfaceScaffold...'
    result = `#{ChecklistStepInterfaceInfrastructureInterfaceScaffold.new.destroy_command}`
    puts result unless result.strip.empty?

    puts 'Destroying ChecklistTagScaffold...'
    result = `#{ChecklistTagScaffold.new.destroy_command}`
    puts result unless result.strip.empty?

    puts 'Destroying ChecklistTagGradeWeightScaffold...'
    result = `#{ChecklistTagGradeWeightScaffold.new.destroy_command}`
    puts result unless result.strip.empty?

    puts 'Finished destroy:checklist task!'
  end
end
