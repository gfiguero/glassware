class Aim::Checklist::ChecklistCategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :icon_file_name, :icon_content_type, :icon_file_size, :icon_updated_at, :created_at, :updated_at, :filterable_by_auditor, :filterable_by_supervisor
end
