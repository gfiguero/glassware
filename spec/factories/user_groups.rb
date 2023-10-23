FactoryBot.define do
  factory :user_group do
    add_attribute(:group) { nil }
    add_attribute(:user) { nil }
    add_attribute(:created_at) { "2023-10-23 12:29:26" }
    add_attribute(:updated_at) { "2023-10-23 12:29:26" }
  end
end
