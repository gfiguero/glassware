class ProfilesRole < ApplicationRecord
  self.table_name = "aim_profiles_roles"
  include SortableScopes
  include FilterScopes
  belongs_to :role
  belongs_to :profile
end
