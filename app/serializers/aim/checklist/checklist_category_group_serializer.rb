class Aim::Checklist::ChecklistCategoryGroupSerializer < ActiveModel::Serializer
  attributes :id, :checklist_category_id, :created_at, :updated_at, :relation_kind
end
