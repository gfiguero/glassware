FactoryBot.define do
  factory :group do
    add_attribute(:name) { "MyString" }
    add_attribute(:created_at) { "2023-10-20 15:36:23" }
    add_attribute(:updated_at) { "2023-10-20 15:36:23" }
    add_attribute(:kind) { "MyString" }
  end
end
