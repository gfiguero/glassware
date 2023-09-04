class Aim::Core::UsersGroup < ApplicationRecord
  self.table_name = "group:references"
  belongs_to :user
end
