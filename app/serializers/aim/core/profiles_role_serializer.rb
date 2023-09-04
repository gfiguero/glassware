class Aim::Core::ProfilesRoleSerializer < ActiveModel::Serializer
  attributes :id, :created_at, :updated_at
  has_one :profile
end
