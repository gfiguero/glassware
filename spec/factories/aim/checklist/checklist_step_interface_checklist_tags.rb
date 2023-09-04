FactoryBot.define do
  factory :aim_checklist_checklist_step_interface_checklist_tag, class: 'Aim::Checklist::ChecklistStepInterfaceChecklistTag' do
    add_attribute(:checklist_tag_id) { 1 }
    add_attribute(:created_at) { "2023-09-04 15:56:17" }
    add_attribute(:updated_at) { "2023-09-04 15:56:17" }
    add_attribute(:grade_weight) { 1.5 }
  end
end
