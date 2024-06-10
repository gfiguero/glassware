class TestArticle < ApplicationRecord
  self.table_name = "test_articles"
  include SortableScopes
  include FilterScopes
  has_secure_password
  acts_as_paranoid
end
