FactoryBot.define do
  factory :aim_checklist_checklist_category, class: 'Aim::Checklist::ChecklistCategory' do
    add_attribute(:name) { "MyString" }
    add_attribute(:icon_file_name) { "MyString" }
    add_attribute(:icon_content_type) { "MyString" }
    add_attribute(:icon_file_size) { 1 }
    add_attribute(:icon_updated_at) { "2023-09-04 15:55:52" }
    add_attribute(:created_at) { "2023-09-04 15:55:52" }
    add_attribute(:updated_at) { "2023-09-04 15:55:52" }
    add_attribute(:filterable_by_auditor) { false }
    add_attribute(:filterable_by_supervisor) { false }
  end
end
