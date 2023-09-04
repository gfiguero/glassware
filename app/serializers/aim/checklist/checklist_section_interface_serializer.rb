class Aim::Checklist::ChecklistSectionInterfaceSerializer < ActiveModel::Serializer
  attributes :id, :checklist_interface_id, :name, :grade_weight, :description, :rank, :deleted_at, :created_at, :updated_at
end
