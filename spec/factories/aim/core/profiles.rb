FactoryBot.define do
  factory :aim_core_profile, class: 'Aim::Core::Profile' do
    add_attribute(:created_at) { "2023-09-04 15:58:52" }
    add_attribute(:updated_at) { "2023-09-04 15:58:52" }
    add_attribute(:description) { "MyText" }
    add_attribute(:usage) { "MyString" }
    add_attribute(:initial_role_ids) { "MyText" }
  end
end
