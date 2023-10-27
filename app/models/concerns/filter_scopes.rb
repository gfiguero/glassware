module FilterScopes
  extend ActiveSupport::Concern

  included do
    scope :filter_by_id, ->(id) { where(id: id) }
    scope :filter_by_name, ->(name) { where.like(name: "%#{name}%") }
    scope :filter_by_email, ->(email) { where.like(email: "%#{email}%") }
    scope :filter_by_groups, ->(groups) { joins(:groups).where(groups: groups) }
  end

end