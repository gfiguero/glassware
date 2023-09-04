FactoryBot.define do
  factory :aim_checklist_checklist_category_group, class: 'Aim::Checklist::ChecklistCategoryGroup' do
    add_attribute(:group_id) { 1 }
    add_attribute(:checklist_category_id) { 1 }
    add_attribute(:created_at) { "2023-09-04 17:16:22" }
    add_attribute(:updated_at) { "2023-09-04 17:16:22" }
    add_attribute(:relation_kind) { "MyString" }
  end
end
