class Aim::Checklist::ChecklistTagSerializer < ActiveModel::Serializer
  attributes :id, :name, :created_at, :updated_at, :deleted_at, :chosen_grade_option_name, :override_grade, :override_checklist_tag_id, :skipped, :tag_type, :grade_weight, :rank, :aim_concept_id
end
