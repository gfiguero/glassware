require 'rails_helper'

RSpec.describe "aim/checklist/checklist_interfaces/index", type: :view do
  before(:each) do
    assign(:aim_checklist_checklist_interfaces, [
      Aim::Checklist::ChecklistInterface.create!(
        grade_min: 2,
        grade_max: 3,
        grade_interval: 4,
        is_for_store: false,
        icon_file_name: "Icon File Name",
        icon_content_type: "Icon Content Type",
        icon_file_size: 5,
        autogenerate_incident: false,
        is_for_service: false,
        is_for_infrastructure: false,
        checklist_category_id: 6,
        user_start_position: 7,
        user_finish_position: 8,
        expiration_time: 9.5,
        is_section_weight: false,
        show_skip_steps: false,
        show_section_of_skip_steps: false,
        show_pdf_skip_steps: false,
        show_pdf_section_of_skip_steps: false,
        aim_concept_id: 10,
        add_photo_from_gallery: false,
        show_pdf_unsuccess_step_only: false
      ),
      Aim::Checklist::ChecklistInterface.create!(
        grade_min: 2,
        grade_max: 3,
        grade_interval: 4,
        is_for_store: false,
        icon_file_name: "Icon File Name",
        icon_content_type: "Icon Content Type",
        icon_file_size: 5,
        autogenerate_incident: false,
        is_for_service: false,
        is_for_infrastructure: false,
        checklist_category_id: 6,
        user_start_position: 7,
        user_finish_position: 8,
        expiration_time: 9.5,
        is_section_weight: false,
        show_skip_steps: false,
        show_section_of_skip_steps: false,
        show_pdf_skip_steps: false,
        show_pdf_section_of_skip_steps: false,
        aim_concept_id: 10,
        add_photo_from_gallery: false,
        show_pdf_unsuccess_step_only: false
      )
    ])
  end

  it "renders a list of aim/checklist/checklist_interfaces" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(4.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Icon File Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Icon Content Type".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(5.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(6.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(7.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(8.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(9.5.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(10.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
  end
end
