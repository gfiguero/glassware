class Authorization::ProvisionSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :created_at, :updated_at
end
