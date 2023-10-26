class AdminGroup < ApplicationRecord
  self.table_name = "admin_groups"
  belongs_to :group
  belongs_to :adminable, polymorphic: true
end
