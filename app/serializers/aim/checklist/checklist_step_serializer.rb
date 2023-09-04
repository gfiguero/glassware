class Aim::Checklist::ChecklistStepSerializer < ActiveModel::Serializer
  attributes :id, :checklist_id, :checklist_grade_option_id, :comments, :grade, :created_at, :updated_at, :answered_at, :skipped, :incident_slug, :infrastructure_id, :forced_grade, :grade_weight, :slug, :grade_weight_percentage, :checklist_section_id, :absolute_grade_weight_percentage, :absolute_grade_percentage
end
