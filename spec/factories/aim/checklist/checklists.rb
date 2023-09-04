FactoryBot.define do
  factory :aim_checklist_checklist, class: 'Aim::Checklist::Checklist' do
    add_attribute(:checklist_interface_id) { 1 }
    add_attribute(:map_id) { 1 }
    add_attribute(:store_id) { 1 }
    add_attribute(:user_id) { 1 }
    add_attribute(:global_grade) { "9.99" }
    add_attribute(:started_at) { "2023-09-04 17:16:15" }
    add_attribute(:created_at) { "2023-09-04 17:16:15" }
    add_attribute(:updated_at) { "2023-09-04 17:16:15" }
    add_attribute(:finished_at) { "2023-09-04 17:16:15" }
    add_attribute(:service_id) { 1 }
    add_attribute(:infrastructure_id) { 1 }
    add_attribute(:slug) { "MyString" }
    add_attribute(:user_start_position) { "" }
    add_attribute(:user_finish_position) { "" }
    add_attribute(:grade_min) { 1 }
    add_attribute(:grade_max) { 1 }
  end
end
