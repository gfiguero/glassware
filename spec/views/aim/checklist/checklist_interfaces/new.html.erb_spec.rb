require 'rails_helper'

RSpec.describe "aim/checklist/checklist_interfaces/new", type: :view do
  before(:each) do
    assign(:aim/checklist_checklist_interface, Aim::Checklist::ChecklistInterface.new(
      grade_min: 1,
      grade_max: 1,
      grade_interval: 1,
      is_for_store: false,
      icon_file_name: "MyString",
      icon_content_type: "MyString",
      icon_file_size: 1,
      autogenerate_incident: false,
      is_for_service: false,
      is_for_infrastructure: false,
      checklist_category_id: 1,
      user_start_position: 1,
      user_finish_position: 1,
      expiration_time: 1.5,
      is_section_weight: false,
      show_skip_steps: false,
      show_section_of_skip_steps: false,
      show_pdf_skip_steps: false,
      show_pdf_section_of_skip_steps: false,
      aim_concept_id: 1,
      add_photo_from_gallery: false,
      show_pdf_unsuccess_step_only: false
    ))
  end

  it "renders new aim/checklist_checklist_interface form" do
    render

    assert_select "form[action=?][method=?]", aim_checklist_checklist_interfaces_path, "post" do

      assert_select "input[name=?]", "aim/checklist_checklist_interface[grade_min]"

      assert_select "input[name=?]", "aim/checklist_checklist_interface[grade_max]"

      assert_select "input[name=?]", "aim/checklist_checklist_interface[grade_interval]"

      assert_select "input[name=?]", "aim/checklist_checklist_interface[is_for_store]"

      assert_select "input[name=?]", "aim/checklist_checklist_interface[icon_file_name]"

      assert_select "input[name=?]", "aim/checklist_checklist_interface[icon_content_type]"

      assert_select "input[name=?]", "aim/checklist_checklist_interface[icon_file_size]"

      assert_select "input[name=?]", "aim/checklist_checklist_interface[autogenerate_incident]"

      assert_select "input[name=?]", "aim/checklist_checklist_interface[is_for_service]"

      assert_select "input[name=?]", "aim/checklist_checklist_interface[is_for_infrastructure]"

      assert_select "input[name=?]", "aim/checklist_checklist_interface[checklist_category_id]"

      assert_select "input[name=?]", "aim/checklist_checklist_interface[user_start_position]"

      assert_select "input[name=?]", "aim/checklist_checklist_interface[user_finish_position]"

      assert_select "input[name=?]", "aim/checklist_checklist_interface[expiration_time]"

      assert_select "input[name=?]", "aim/checklist_checklist_interface[is_section_weight]"

      assert_select "input[name=?]", "aim/checklist_checklist_interface[show_skip_steps]"

      assert_select "input[name=?]", "aim/checklist_checklist_interface[show_section_of_skip_steps]"

      assert_select "input[name=?]", "aim/checklist_checklist_interface[show_pdf_skip_steps]"

      assert_select "input[name=?]", "aim/checklist_checklist_interface[show_pdf_section_of_skip_steps]"

      assert_select "input[name=?]", "aim/checklist_checklist_interface[aim_concept_id]"

      assert_select "input[name=?]", "aim/checklist_checklist_interface[add_photo_from_gallery]"

      assert_select "input[name=?]", "aim/checklist_checklist_interface[show_pdf_unsuccess_step_only]"
    end
  end
end
