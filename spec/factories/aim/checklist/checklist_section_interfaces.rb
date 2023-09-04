FactoryBot.define do
  factory :aim_checklist_checklist_section_interface, class: 'Aim::Checklist::ChecklistSectionInterface' do
    add_attribute(:checklist_interface_id) { 1 }
    add_attribute(:name) { "MyString" }
    add_attribute(:grade_weight) { 1.5 }
    add_attribute(:description) { "MyText" }
    add_attribute(:rank) { 1.5 }
    add_attribute(:deleted_at) { "2023-09-04 17:16:36" }
    add_attribute(:created_at) { "2023-09-04 17:16:36" }
    add_attribute(:updated_at) { "2023-09-04 17:16:36" }
  end
end
