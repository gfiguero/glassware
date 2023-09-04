class Aim::Checklist::ChecklistGradeOptionSerializer < ActiveModel::Serializer
  attributes :id, :name, :grade, :incident_interface_id, :created_at, :updated_at, :comments, :pictures, :documents, :deleted_at, :default_tag_for_incident_id
end
