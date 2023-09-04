FactoryBot.define do
  factory :aim_checklist_checklist_section, class: 'Aim::Checklist::ChecklistSection' do
    add_attribute(:checklist_section_interface_id) { 1 }
    add_attribute(:checklist_id) { 1 }
    add_attribute(:grade) { "9.99" }
    add_attribute(:grade_weight) { 1.5 }
    add_attribute(:grade_weight_percentage) { 1.5 }
    add_attribute(:skipped) { false }
    add_attribute(:rank) { 1 }
    add_attribute(:created_at) { "2023-09-04 17:16:35" }
    add_attribute(:updated_at) { "2023-09-04 17:16:35" }
  end
end
