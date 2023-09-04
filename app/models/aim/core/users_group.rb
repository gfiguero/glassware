class Aim::Core::UsersGroup < ApplicationRecord
  self.table_name = "aim_users_groups"
  belongs_to :group
  belongs_to :user
end
