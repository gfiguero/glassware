FactoryBot.define do
  factory :authorization_provision_supplier, class: 'Authorization::ProvisionSupplier' do
    add_attribute(:provision_id) { 1 }
    add_attribute(:supplier_id) { 1 }
    add_attribute(:created_at) { "2023-09-06 15:18:28" }
    add_attribute(:updated_at) { "2023-09-06 15:18:28" }
  end
end
