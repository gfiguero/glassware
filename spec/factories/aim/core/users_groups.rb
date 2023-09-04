FactoryBot.define do
  factory :aim_core_users_group, class: 'Aim::Core::UsersGroup' do
    add_attribute(:user) { nil }
    add_attribute(:created_at) { "2023-09-04 15:58:57" }
    add_attribute(:updated_at) { "2023-09-04 15:58:57" }
  end
end
