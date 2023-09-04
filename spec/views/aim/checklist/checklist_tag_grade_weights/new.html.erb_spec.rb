require 'rails_helper'

RSpec.describe "aim/checklist/checklist_tag_grade_weights/new", type: :view do
  before(:each) do
    assign(:aim/checklist_checklist_tag_grade_weight, Aim::Checklist::ChecklistTagGradeWeight.new(
      tag_id: 1,
      grade_weight: 1.5,
      grade: 1.5
    ))
  end

  it "renders new aim/checklist_checklist_tag_grade_weight form" do
    render

    assert_select "form[action=?][method=?]", aim_checklist_checklist_tag_grade_weights_path, "post" do

      assert_select "input[name=?]", "aim/checklist_checklist_tag_grade_weight[tag_id]"

      assert_select "input[name=?]", "aim/checklist_checklist_tag_grade_weight[grade_weight]"

      assert_select "input[name=?]", "aim/checklist_checklist_tag_grade_weight[grade]"
    end
  end
end
