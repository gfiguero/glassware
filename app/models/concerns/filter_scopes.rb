module FilterScopes
  extend ActiveSupport::Concern

  included do
    scope :filter_by_id, ->(id) { where(id: id) }
    scope :filter_by_name, ->(name) { where.like(name: "%#{name}%") }
    scope :filter_by_email, ->(email) { where.like(email: "%#{email}%") }
    scope :filter_by_groups, ->(groups) { joins(:groups).where(groups: groups) }
    scope :filter_by_profiles, ->(profiles) { joins(:profiles).where(profiles: profiles) }
    scope :filter_by_roles, ->(roles) { joins(:roles).where(roles: roles) }
  end

end