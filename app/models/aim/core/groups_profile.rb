class Aim::Core::GroupsProfile < ApplicationRecord
  self.table_name = "group:references"
  belongs_to :profile
end
