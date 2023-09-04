FactoryBot.define do
  factory :aim_checklist_checklist_tag_grade_weight, class: 'Aim::Checklist::ChecklistTagGradeWeight' do
    add_attribute(:checklist_id) { 1 }
    add_attribute(:tag_id) { 1 }
    add_attribute(:grade_weight) { 1.5 }
    add_attribute(:grade) { 1.5 }
  end
end
