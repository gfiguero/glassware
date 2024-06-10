class TestPost < ApplicationRecord
  self.table_name = "test_posts"
  include SortableScopes
  include FilterScopes
  belongs_to :test_article
end
