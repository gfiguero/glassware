class Aim::Core::RoleSerializer < ActiveModel::Serializer
  attributes :id, :name, :created_at, :updated_at, :usage
end
