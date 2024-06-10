FactoryBot.define do
  factory :test_post do
    add_attribute(:content) { "MyText" }
    add_attribute(:test_article) { nil }
  end
end
