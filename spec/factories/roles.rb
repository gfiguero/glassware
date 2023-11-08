FactoryBot.define do
  factory :role do
    add_attribute(:name) { "MyString" }
    add_attribute(:usage) { "MyString" }
    add_attribute(:profiles) { nil }
  end
end
