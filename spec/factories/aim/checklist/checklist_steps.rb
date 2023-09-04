FactoryBot.define do
  factory :aim_checklist_checklist_step, class: 'Aim::Checklist::ChecklistStep' do
    add_attribute(:checklist_id) { 1 }
    add_attribute(:checklist_grade_option_id) { 1 }
    add_attribute(:comments) { "MyText" }
    add_attribute(:grade) { 1 }
    add_attribute(:created_at) { "2023-09-04 15:56:12" }
    add_attribute(:updated_at) { "2023-09-04 15:56:12" }
    add_attribute(:answered_at) { "2023-09-04 15:56:12" }
    add_attribute(:skipped) { false }
    add_attribute(:incident_slug) { "MyString" }
    add_attribute(:infrastructure_id) { 1 }
    add_attribute(:forced_grade) { false }
    add_attribute(:grade_weight) { 1.5 }
    add_attribute(:slug) { "MyString" }
    add_attribute(:grade_weight_percentage) { 1.5 }
    add_attribute(:checklist_section_id) { 1 }
    add_attribute(:absolute_grade_weight_percentage) { 1.5 }
    add_attribute(:absolute_grade_percentage) { 1.5 }
  end
end
