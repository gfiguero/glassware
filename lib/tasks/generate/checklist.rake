Dir[Rails.root.join('scripts/generators/checklist/*.rb')].each { |file| require file }

namespace :generate do
  desc 'Generate Checklists Scaffolds for the project'
  task checklist: :environment do
    puts 'Starting generator:checklist task...'

    scaffolds = [
      "Checklist",
      "ChecklistAnswerOption",
      "ChecklistAnswerOptionsTag",
      "ChecklistCategory",
      "ChecklistCategoriesCustomReport",
      "ChecklistCategoryGroup",
      "ChecklistGradeOption",
      "ChecklistInterface",
      "ChecklistInterfaceConcept",
      "ChecklistInterfaceCustomReport",
      "ChecklistInterfaceGroup",
      "ChecklistInterfaceInfoGroup",
      "ChecklistInterfaceMap",
      "ChecklistSection",
      "ChecklistSectionInterface",
      "ChecklistSectionInterfaceGroup",
      "ChecklistStep",
      "ChecklistStepChecklistTag",
      "ChecklistStepInterface",
      "ChecklistStepInterfaceChecklistTag",
      "ChecklistStepInterfaceInfrastructureInterface",
      "ChecklistTag",
      "ChecklistTagGradeWeight"
    ]

    scaffolds.each do |scaffold|
      puts "Generating #{scaffold}Scaffold..."
      system(Object.const_get("#{scaffold}Scaffold").new.generate_command)
    end

    puts 'Finished generator:checklist task!'
  end
end
