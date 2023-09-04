FactoryBot.define do
  factory :aim_checklist_checklist_section_interface, class: 'Aim::Checklist::ChecklistSectionInterface' do
    add_attribute(:name) { "MyString" }
    add_attribute(:grade_weight) { 1.5 }
    add_attribute(:description) { "MyText" }
    add_attribute(:rank) { 1.5 }
    add_attribute(:deleted_at) { "2023-09-04 15:56:09" }
    add_attribute(:created_at) { "2023-09-04 15:56:09" }
    add_attribute(:updated_at) { "2023-09-04 15:56:09" }
  end
end
