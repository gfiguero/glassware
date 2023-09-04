FactoryBot.define do
  factory :aim_checklist_checklist_interface, class: 'Aim::Checklist::ChecklistInterface' do
    add_attribute(:grade_min) { 1 }
    add_attribute(:grade_max) { 1 }
    add_attribute(:grade_interval) { 1 }
    add_attribute(:is_for_store) { false }
    add_attribute(:created_at) { "2023-09-04 15:55:58" }
    add_attribute(:updated_at) { "2023-09-04 15:55:58" }
    add_attribute(:icon_file_name) { "MyString" }
    add_attribute(:icon_content_type) { "MyString" }
    add_attribute(:icon_file_size) { 1 }
    add_attribute(:icon_updated_at) { "2023-09-04 15:55:58" }
    add_attribute(:autogenerate_incident) { false }
    add_attribute(:is_for_service) { false }
    add_attribute(:is_for_infrastructure) { false }
    add_attribute(:checklist_category_id) { 1 }
    add_attribute(:deleted_at) { "2023-09-04 15:55:58" }
    add_attribute(:user_start_position) { 1 }
    add_attribute(:user_finish_position) { 1 }
    add_attribute(:expiration_time) { 1.5 }
    add_attribute(:is_section_weight) { false }
    add_attribute(:show_skip_steps) { false }
    add_attribute(:show_section_of_skip_steps) { false }
    add_attribute(:show_pdf_skip_steps) { false }
    add_attribute(:show_pdf_section_of_skip_steps) { false }
    add_attribute(:aim_concept_id) { 1 }
    add_attribute(:add_photo_from_gallery) { false }
    add_attribute(:show_pdf_unsuccess_step_only) { false }
  end
end
