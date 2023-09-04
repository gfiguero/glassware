class Aim::Core::GroupsProfile < ApplicationRecord
  self.table_name = "aim_groups_profiles"
  belongs_to :group
  belongs_to :profile
end
