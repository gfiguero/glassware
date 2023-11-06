FactoryBot.define do
  factory :role do
    add_attribute(:name) { "MyString" }
    add_attribute(:created_at) { "2023-11-05 14:14:40" }
    add_attribute(:updated_at) { "2023-11-05 14:14:40" }
    add_attribute(:usage) { "MyString" }
    add_attribute(:profiles) { nil }
  end
end
