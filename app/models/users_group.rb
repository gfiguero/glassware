class UsersGroup < ApplicationRecord
  self.table_name = "admin_groups"
  belongs_to :group
  belongs_to :groupable, polymorphic: true, foreign_key: :adminable_id, foreign_type: :adminable_type
end
