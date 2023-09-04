class Aim::Checklist::ChecklistStepInterfaceSerializer < ActiveModel::Serializer
  attributes :id, :checklist_section_interface_id, :name, :description, :comments_when_high_grade, :pictures_when_high_grade, :documents_when_high_grade, :has_grade, :low_grade, :incident_interface_id, :created_at, :updated_at, :required, :skippable, :grade_weight, :light_question, :comments_when_low_grade, :pictures_when_low_grade, :documents_when_low_grade, :parent_checklist_step_interface_id, :parent_checklist_grade_option_id, :default_grade, :default_checklist_grade_option_id, :rank, :deleted_at
end
