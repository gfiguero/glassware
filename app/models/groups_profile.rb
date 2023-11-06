class GroupsProfile < ApplicationRecord
  self.table_name = "aim_groups_profiles"
  include SortableScopes
  include FilterScopes
  belongs_to :group
  belongs_to :profile
end
