module Aim
  module Core
    class RoleSerializer < ActiveModel::Serializer
      attributes :id, :name, :created_at, :updated_at, :usage
    end
  end
end
