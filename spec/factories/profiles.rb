FactoryBot.define do
  factory :profile do
    add_attribute(:name) { "MyString" }
    add_attribute(:created_at) { "2023-10-19 18:27:04" }
    add_attribute(:updated_at) { "2023-10-19 18:27:04" }
    add_attribute(:description) { "MyText" }
    add_attribute(:usage) { "MyString" }
    add_attribute(:initial_role_ids) { "MyText" }
  end
end
