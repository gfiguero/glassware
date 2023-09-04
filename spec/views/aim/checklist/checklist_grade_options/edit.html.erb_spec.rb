require 'rails_helper'

RSpec.describe "aim/checklist/checklist_grade_options/edit", type: :view do
  let(:aim/checklist_checklist_grade_option) {
    Aim::Checklist::ChecklistGradeOption.create!(
      checklist_step_interface_id: 1,
      name: "MyString",
      grade: 1,
      incident_interface_id: 1,
      comments: 1,
      pictures: 1,
      documents: 1,
      default_tag_for_incident_id: 1
    )
  }

  before(:each) do
    assign(:aim/checklist_checklist_grade_option, aim/checklist_checklist_grade_option)
  end

  it "renders the edit aim/checklist_checklist_grade_option form" do
    render

    assert_select "form[action=?][method=?]", aim/checklist_checklist_grade_option_path(aim/checklist_checklist_grade_option), "post" do

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
