class TestTag < ApplicationRecord
  self.table_name = "test_tags"
  include SortableScopes
  include FilterScopes
end
