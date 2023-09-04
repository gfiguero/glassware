FactoryBot.define do
  factory :aim_core_role, class: 'Aim::Core::Role' do
    add_attribute(:name) { "MyString" }
    add_attribute(:created_at) { "2023-09-04 17:15:29" }
    add_attribute(:updated_at) { "2023-09-04 17:15:29" }
    add_attribute(:usage) { "MyString" }
  end
end
