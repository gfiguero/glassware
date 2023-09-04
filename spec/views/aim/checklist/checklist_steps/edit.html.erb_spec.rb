require 'rails_helper'

RSpec.describe "aim/checklist/checklist_steps/edit", type: :view do
  let(:aim/checklist_checklist_step) {
    Aim::Checklist::ChecklistStep.create!(
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
    )
  }

  before(:each) do
    assign(:aim/checklist_checklist_step, aim/checklist_checklist_step)
  end

  it "renders the edit aim/checklist_checklist_step form" do
    render

    assert_select "form[action=?][method=?]", aim/checklist_checklist_step_path(aim/checklist_checklist_step), "post" do

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
