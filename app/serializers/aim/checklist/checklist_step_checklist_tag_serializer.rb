class Aim::Checklist::ChecklistStepChecklistTagSerializer < ActiveModel::Serializer
  attributes :id, :checklist_tag_id, :created_at, :updated_at, :grade_weight
end
