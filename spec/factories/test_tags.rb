FactoryBot.define do
  factory :test_tag do
    add_attribute(:name) { "MyString" }
    add_attribute(:description) { "MyText" }
  end
end
