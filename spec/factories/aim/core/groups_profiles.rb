FactoryBot.define do
  factory :aim_core_groups_profile, class: 'Aim::Core::GroupsProfile' do
    add_attribute(:group) { nil }
    add_attribute(:profile) { nil }
    add_attribute(:created_at) { "2023-09-04 17:15:33" }
    add_attribute(:updated_at) { "2023-09-04 17:15:33" }
  end
end
