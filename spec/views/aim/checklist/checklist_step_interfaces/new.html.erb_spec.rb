require 'rails_helper'

RSpec.describe "aim/checklist/checklist_step_interfaces/new", type: :view do
  before(:each) do
    assign(:aim/checklist_checklist_step_interface, Aim::Checklist::ChecklistStepInterface.new(
      name: "MyString",
      description: "MyText",
      comments_when_high_grade: 1,
      pictures_when_high_grade: 1,
      documents_when_high_grade: 1,
      has_grade: false,
      low_grade: 1,
      incident_interface_id: 1,
      required: false,
      skippable: false,
      grade_weight: 1.5,
      light_question: false,
      comments_when_low_grade: 1,
      pictures_when_low_grade: 1,
      documents_when_low_grade: 1,
      parent_checklist_step_interface_id: 1,
      parent_checklist_grade_option_id: 1,
      default_grade: 1,
      default_checklist_grade_option_id: 1,
      rank: 1.5
    ))
  end

  it "renders new aim/checklist_checklist_step_interface form" do
    render

    assert_select "form[action=?][method=?]", aim_checklist_checklist_step_interfaces_path, "post" do

      assert_select "input[name=?]", "aim/checklist_checklist_step_interface[name]"

      assert_select "textarea[name=?]", "aim/checklist_checklist_step_interface[description]"

      assert_select "input[name=?]", "aim/checklist_checklist_step_interface[comments_when_high_grade]"

      assert_select "input[name=?]", "aim/checklist_checklist_step_interface[pictures_when_high_grade]"

      assert_select "input[name=?]", "aim/checklist_checklist_step_interface[documents_when_high_grade]"

      assert_select "input[name=?]", "aim/checklist_checklist_step_interface[has_grade]"

      assert_select "input[name=?]", "aim/checklist_checklist_step_interface[low_grade]"

      assert_select "input[name=?]", "aim/checklist_checklist_step_interface[incident_interface_id]"

      assert_select "input[name=?]", "aim/checklist_checklist_step_interface[required]"

      assert_select "input[name=?]", "aim/checklist_checklist_step_interface[skippable]"

      assert_select "input[name=?]", "aim/checklist_checklist_step_interface[grade_weight]"

      assert_select "input[name=?]", "aim/checklist_checklist_step_interface[light_question]"

      assert_select "input[name=?]", "aim/checklist_checklist_step_interface[comments_when_low_grade]"

      assert_select "input[name=?]", "aim/checklist_checklist_step_interface[pictures_when_low_grade]"

      assert_select "input[name=?]", "aim/checklist_checklist_step_interface[documents_when_low_grade]"

      assert_select "input[name=?]", "aim/checklist_checklist_step_interface[parent_checklist_step_interface_id]"

      assert_select "input[name=?]", "aim/checklist_checklist_step_interface[parent_checklist_grade_option_id]"

      assert_select "input[name=?]", "aim/checklist_checklist_step_interface[default_grade]"

      assert_select "input[name=?]", "aim/checklist_checklist_step_interface[default_checklist_grade_option_id]"

      assert_select "input[name=?]", "aim/checklist_checklist_step_interface[rank]"
    end
  end
end
