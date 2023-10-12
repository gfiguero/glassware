Dir[Rails.root.join('scripts/generators/checklist/*.rb')].each { |file| require file }

namespace :destroy do
  desc 'Destroy Checklists Scaffolds for the project'
  task checklist: :environment do
    puts 'Starting destroy:checklist task...'

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
      puts "Destroying #{scaffold}Scaffold..."
      system(Object.const_get("#{scaffold}Scaffold").new.destroy_command)
    end

    puts 'Finished destroy:checklist task!'
  end
end
