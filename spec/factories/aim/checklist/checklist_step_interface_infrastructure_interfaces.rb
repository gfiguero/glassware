FactoryBot.define do
  factory :aim_checklist_checklist_step_interface_infrastructure_interface, class: 'Aim::Checklist::ChecklistStepInterfaceInfrastructureInterface' do
    add_attribute(:checklist_step_interface_id) { 1 }
    add_attribute(:infrastructure_interface_id) { 1 }
    add_attribute(:created_at) { "2023-09-04 17:16:45" }
    add_attribute(:updated_at) { "2023-09-04 17:16:45" }
  end
end
