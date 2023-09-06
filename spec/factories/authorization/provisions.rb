FactoryBot.define do
  factory :authorization_provision, class: 'Authorization::Provision' do
    add_attribute(:name) { "MyString" }
    add_attribute(:description) { "MyText" }
    add_attribute(:created_at) { "2023-09-06 15:18:25" }
    add_attribute(:updated_at) { "2023-09-06 15:18:25" }
  end
end
