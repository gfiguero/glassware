class Profile < ApplicationRecord
  self.table_name = "aim_profiles"
  include SortableScopes
  include FilterScopes
  has_many :profiles_roles, dependent: :destroy
  has_many :roles, through: :profiles_roles
  has_many :groups_profiles, dependent: :destroy
  has_many :groups, through: :groups_profiles
end
