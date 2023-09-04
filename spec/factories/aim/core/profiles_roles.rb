FactoryBot.define do
  factory :aim_core_profiles_role, class: 'Aim::Core::ProfilesRole' do
    add_attribute(:role) { nil }
    add_attribute(:profile) { nil }
    add_attribute(:created_at) { "2023-09-04 17:15:30" }
    add_attribute(:updated_at) { "2023-09-04 17:15:30" }
  end
end
