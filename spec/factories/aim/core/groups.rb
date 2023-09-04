FactoryBot.define do
  factory :aim_core_group, class: 'Aim::Core::Group' do
    add_attribute(:created_at) { "2023-09-04 15:58:56" }
    add_attribute(:updated_at) { "2023-09-04 15:58:56" }
    add_attribute(:kind) { "MyString" }
  end
end
