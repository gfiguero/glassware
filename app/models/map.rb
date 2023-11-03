class Map < ApplicationRecord
  self.table_name = "aim_maps"
  include SortableScopes
  include FilterScopes
end
