FactoryBot.define do
  factory :aim_checklist_checklist_step_interface, class: 'Aim::Checklist::ChecklistStepInterface' do
    add_attribute(:checklist_section_interface_id) { 1 }
    add_attribute(:name) { "MyString" }
    add_attribute(:description) { "MyText" }
    add_attribute(:comments_when_high_grade) { 1 }
    add_attribute(:pictures_when_high_grade) { 1 }
    add_attribute(:documents_when_high_grade) { 1 }
    add_attribute(:has_grade) { false }
    add_attribute(:low_grade) { 1 }
    add_attribute(:incident_interface_id) { 1 }
    add_attribute(:created_at) { "2023-09-04 17:16:42" }
    add_attribute(:updated_at) { "2023-09-04 17:16:42" }
    add_attribute(:required) { false }
    add_attribute(:skippable) { false }
    add_attribute(:grade_weight) { 1.5 }
    add_attribute(:light_question) { false }
    add_attribute(:comments_when_low_grade) { 1 }
    add_attribute(:pictures_when_low_grade) { 1 }
    add_attribute(:documents_when_low_grade) { 1 }
    add_attribute(:parent_checklist_step_interface_id) { 1 }
    add_attribute(:parent_checklist_grade_option_id) { 1 }
    add_attribute(:default_grade) { 1 }
    add_attribute(:default_checklist_grade_option_id) { 1 }
    add_attribute(:rank) { 1.5 }
    add_attribute(:deleted_at) { "2023-09-04 17:16:42" }
  end
end
