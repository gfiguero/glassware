class Aim::Core::ProfileSerializer < ActiveModel::Serializer
  attributes :id, :name, :created_at, :updated_at, :description, :usage, :initial_role_ids
end
