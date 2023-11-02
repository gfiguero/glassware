module SortableScopes
  extend ActiveSupport::Concern

  included do
    scope :sort_by_id, -> (direction = nil) { direction.present? ? order(id: direction) : order(id: :asc) }
    scope :sort_by_name, -> (direction = nil) { direction.present? ? order(name: direction) : order(name: :asc) }
    scope :sort_by_email, -> (direction = nil) { direction.present? ? order(email: direction) : order(email: :asc) }
  end

end