class Authorization::ProvisionSupplierSerializer < ActiveModel::Serializer
  attributes :id, :provision_id, :supplier_id, :created_at, :updated_at
end
