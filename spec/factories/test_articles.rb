FactoryBot.define do
  factory :test_article do
    add_attribute(:name) { "MyString" }
    add_attribute(:content) { "MyText" }
    add_attribute(:option) { false }
    add_attribute(:password) { "" }
  end
end
