FactoryBot.define do
  factory :aim_checklist_checklist_tag, class: 'Aim::Checklist::ChecklistTag' do
    add_attribute(:checklist_interface_id) { 1 }
    add_attribute(:name) { "MyString" }
    add_attribute(:created_at) { "2023-09-04 17:16:47" }
    add_attribute(:updated_at) { "2023-09-04 17:16:47" }
    add_attribute(:deleted_at) { "2023-09-04 17:16:47" }
    add_attribute(:chosen_grade_option_name) { "MyString" }
    add_attribute(:override_grade) { 1 }
    add_attribute(:override_checklist_tag_id) { 1 }
    add_attribute(:skipped) { false }
    add_attribute(:tag_type) { 1 }
    add_attribute(:grade_weight) { 1.5 }
    add_attribute(:rank) { 1 }
    add_attribute(:aim_concept_id) { 1 }
  end
end
