class TestTagArticle < ApplicationRecord
  self.table_name = "test_tag_articles"
  include SortableScopes
  include FilterScopes
  belongs_to :test_tag
  belongs_to :test_article
end
