FactoryBot.define do
  factory :aim_core_users_group, class: 'Aim::Core::UsersGroup' do
    add_attribute(:group) { nil }
    add_attribute(:user) { nil }
    add_attribute(:created_at) { "2023-09-04 17:15:36" }
    add_attribute(:updated_at) { "2023-09-04 17:15:36" }
  end
end
