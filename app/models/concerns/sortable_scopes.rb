module SortableScopes
  extend ActiveSupport::Concern

  included do
    scope :sort_by_id, ->(direction = nil) { direction.present? ? reorder(id: direction) : reorder(id: :asc) }
    scope :sort_by_name, ->(direction = nil) { direction.present? ? reorder(name: direction) : reorder(name: :asc) }
    scope :sort_by_email, ->(direction = nil) { direction.present? ? reorder(email: direction) : reorder(email: :asc) }
  end

end