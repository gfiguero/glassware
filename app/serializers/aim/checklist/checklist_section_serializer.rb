class Aim::Checklist::ChecklistSectionSerializer < ActiveModel::Serializer
  attributes :id, :checklist_section_interface_id, :checklist_id, :grade, :grade_weight, :grade_weight_percentage, :skipped, :rank, :created_at, :updated_at
end
