class Aim::Checklist::ChecklistTagGradeWeightSerializer < ActiveModel::Serializer
  attributes :id, :checklist_id, :tag_id, :grade_weight, :grade
end
