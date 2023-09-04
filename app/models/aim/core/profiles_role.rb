class Aim::Core::ProfilesRole < ApplicationRecord
  self.table_name = "aim_profiles_roles"
  belongs_to :role
  belongs_to :profile
end
