FactoryBot.define do
  factory :aim_core_group, class: 'Aim::Core::Group' do
    add_attribute(:name) { "MyString" }
    add_attribute(:created_at) { "2023-09-04 17:15:35" }
    add_attribute(:updated_at) { "2023-09-04 17:15:35" }
    add_attribute(:kind) { "MyString" }
  end
end
