class Aim::Core::GroupSerializer < ActiveModel::Serializer
  attributes :id, :created_at, :updated_at, :kind
end
