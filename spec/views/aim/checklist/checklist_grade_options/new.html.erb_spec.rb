require 'rails_helper'

RSpec.describe "aim/checklist/checklist_grade_options/new", type: :view do
  before(:each) do
    assign(:aim/checklist_checklist_grade_option, Aim::Checklist::ChecklistGradeOption.new(
      checklist_step_interface_id: 1,
      name: "MyString",
      grade: 1,
      incident_interface_id: 1,
      comments: 1,
      pictures: 1,
      documents: 1,
      default_tag_for_incident_id: 1
    ))
  end

  it "renders new aim/checklist_checklist_grade_option form" do
    render

    assert_select "form[action=?][method=?]", aim_checklist_checklist_grade_options_path, "post" do

      assert_select "input[name=?]", "aim/checklist_checklist_grade_option[checklist_step_interface_id]"

      assert_select "input[name=?]", "aim/checklist_checklist_grade_option[name]"

      assert_select "input[name=?]", "aim/checklist_checklist_grade_option[grade]"

      assert_select "input[name=?]", "aim/checklist_checklist_grade_option[incident_interface_id]"

      assert_select "input[name=?]", "aim/checklist_checklist_grade_option[comments]"

      assert_select "input[name=?]", "aim/checklist_checklist_grade_option[pictures]"

      assert_select "input[name=?]", "aim/checklist_checklist_grade_option[documents]"

      assert_select "input[name=?]", "aim/checklist_checklist_grade_option[default_tag_for_incident_id]"
    end
  end
end
