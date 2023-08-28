module Aim
  module Core
    class ProfileSerializer < ActiveModel::Serializer
      attributes :id, :name, :created_at, :updated_at, :description, :usage, :initial_role_ids
    end
  end
end
