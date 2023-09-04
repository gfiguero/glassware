FactoryBot.define do
  factory :aim_checklist_checklist_grade_option, class: 'Aim::Checklist::ChecklistGradeOption' do
    add_attribute(:checklist_step_interface_id) { 1 }
    add_attribute(:name) { "MyString" }
    add_attribute(:grade) { 1 }
    add_attribute(:incident_interface_id) { 1 }
    add_attribute(:created_at) { "2023-09-04 17:16:24" }
    add_attribute(:updated_at) { "2023-09-04 17:16:24" }
    add_attribute(:comments) { 1 }
    add_attribute(:pictures) { 1 }
    add_attribute(:documents) { 1 }
    add_attribute(:deleted_at) { "2023-09-04 17:16:24" }
    add_attribute(:default_tag_for_incident_id) { 1 }
  end
end
