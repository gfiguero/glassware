class Group < ApplicationRecord
  self.table_name = "groups"

  has_many :admin_groups, dependent: :destroy
  has_many :users, through: :admin_groups, source: :adminable, source_type: 'Aim::User', class_name: 'User'
end
