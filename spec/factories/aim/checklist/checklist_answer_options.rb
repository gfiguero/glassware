FactoryBot.define do
  factory :aim_checklist_checklist_answer_option, class: 'Aim::Checklist::ChecklistAnswerOption' do
    add_attribute(:checklist_tag_id) { 1 }
    add_attribute(:name) { "MyString" }
    add_attribute(:created_at) { "2023-09-04 17:16:16" }
    add_attribute(:updated_at) { "2023-09-04 17:16:16" }
  end
end
