FactoryBot.define do
  factory :profile do
    add_attribute(:name) { "MyString" }
    add_attribute(:description) { "MyText" }
    add_attribute(:usage) { "MyString" }
    add_attribute(:initial_role_ids) { "MyText" }
    add_attribute(:roles) { nil }
  end
end
