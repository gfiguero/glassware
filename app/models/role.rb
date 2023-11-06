class Role < ApplicationRecord
  self.table_name = "roles"
  include SortableScopes
  include FilterScopes
  has_many :profiles_roles, dependent: :destroy
  has_many :profiles, through: :profiles_roles
  def resource
    name.split('#', 2).first.split('/', 2).last.to_sym
  end

  def action
    name.split('#', 2).last.to_sym
  end
end
