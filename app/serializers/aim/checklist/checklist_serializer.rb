class Aim::Checklist::ChecklistSerializer < ActiveModel::Serializer
  attributes :id, :map_id, :store_id, :user_id, :global_grade, :started_at, :created_at, :updated_at, :finished_at, :service_id, :infrastructure_id, :slug, :user_start_position, :user_finish_position, :grade_min, :grade_max
end
