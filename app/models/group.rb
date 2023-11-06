class Group < ApplicationRecord
  self.table_name = "groups"
  include SortableScopes
  include FilterScopes

  has_many :users_groups, dependent: :destroy
  has_many :users, through: :users_groups, source: :groupable, source_type: 'Aim::User', class_name: 'User'

  has_many :groups_profiles, dependent: :destroy
  has_many :profiles, through: :groups_profiles
  has_many :roles, through: :profiles

end
