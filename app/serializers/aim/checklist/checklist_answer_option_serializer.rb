class Aim::Checklist::ChecklistAnswerOptionSerializer < ActiveModel::Serializer
  attributes :id, :checklist_tag_id, :name, :created_at, :updated_at
end
