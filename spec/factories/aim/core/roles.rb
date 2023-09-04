FactoryBot.define do
  factory :aim_core_role, class: 'Aim::Core::Role' do
    add_attribute(:created_at) { "2023-09-04 15:58:49" }
    add_attribute(:updated_at) { "2023-09-04 15:58:49" }
    add_attribute(:usage) { "MyString" }
  end
end
