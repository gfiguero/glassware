module Aim
  module Core
    class GroupSerializer < ActiveModel::Serializer
      attributes :id, :name, :created_at, :updated_at, :kind
    end
  end
end
