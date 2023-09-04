class Aim::Checklist::ChecklistSectionInterfaceSerializer < ActiveModel::Serializer
  attributes :id, :name, :grade_weight, :description, :rank, :deleted_at, :created_at, :updated_at
end
