class Aim::Core::ProfilesRole < ApplicationRecord
  self.table_name = "role:references"
  belongs_to :profile
end
