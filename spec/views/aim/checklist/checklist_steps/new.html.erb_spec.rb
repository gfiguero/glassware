require 'rails_helper'

RSpec.describe "aim/checklist/checklist_steps/new", type: :view do
  before(:each) do
    assign(:aim/checklist_checklist_step, Aim::Checklist::ChecklistStep.new(
      checklist_step_interface_id: 1,
      checklist_id: 1,
      checklist_grade_option_id: 1,
      comments: "MyText",
      grade: 1,
      skipped: false,
      incident_slug: "MyString",
      infrastructure_id: 1,
      forced_grade: false,
      grade_weight: 1.5,
      slug: "MyString",
      grade_weight_percentage: 1.5,
      checklist_section_id: 1,
      absolute_grade_weight_percentage: 1.5,
      absolute_grade_percentage: 1.5
    ))
  end

  it "renders new aim/checklist_checklist_step form" do
    render

    assert_select "form[action=?][method=?]", aim_checklist_checklist_steps_path, "post" do

      assert_select "input[name=?]", "aim/checklist_checklist_step[checklist_step_interface_id]"

      assert_select "input[name=?]", "aim/checklist_checklist_step[checklist_id]"

      assert_select "input[name=?]", "aim/checklist_checklist_step[checklist_grade_option_id]"

      assert_select "textarea[name=?]", "aim/checklist_checklist_step[comments]"

      assert_select "input[name=?]", "aim/checklist_checklist_step[grade]"

      assert_select "input[name=?]", "aim/checklist_checklist_step[skipped]"

      assert_select "input[name=?]", "aim/checklist_checklist_step[incident_slug]"

      assert_select "input[name=?]", "aim/checklist_checklist_step[infrastructure_id]"

      assert_select "input[name=?]", "aim/checklist_checklist_step[forced_grade]"

      assert_select "input[name=?]", "aim/checklist_checklist_step[grade_weight]"

      assert_select "input[name=?]", "aim/checklist_checklist_step[slug]"

      assert_select "input[name=?]", "aim/checklist_checklist_step[grade_weight_percentage]"

      assert_select "input[name=?]", "aim/checklist_checklist_step[checklist_section_id]"

      assert_select "input[name=?]", "aim/checklist_checklist_step[absolute_grade_weight_percentage]"

      assert_select "input[name=?]", "aim/checklist_checklist_step[absolute_grade_percentage]"
    end
  end
end
