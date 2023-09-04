class Aim::Core::RoleSerializer < ActiveModel::Serializer
  attributes :id, :created_at, :updated_at, :usage
end
