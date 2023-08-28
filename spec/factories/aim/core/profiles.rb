FactoryBot.define do
  factory :aim_core_profile, class: 'Aim::Core::Profile' do
    name { 'MyString' }
    created_at { '2023-08-28 19:19:18' }
    updated_at { '2023-08-28 19:19:18' }
    description { 'MyText' }
    usage { 'MyString' }
    initial_role_ids { 'MyText' }
  end
end
