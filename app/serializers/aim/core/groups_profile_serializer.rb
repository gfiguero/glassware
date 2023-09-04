class Aim::Core::GroupsProfileSerializer < ActiveModel::Serializer
  attributes :id, :created_at, :updated_at
  has_one :group
  has_one :profile
end
