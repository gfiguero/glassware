require 'rails_helper'

RSpec.describe "aim/checklist/checklist_tag_grade_weights/edit", type: :view do
  let(:aim/checklist_checklist_tag_grade_weight) {
    Aim::Checklist::ChecklistTagGradeWeight.create!(
      checklist_id: 1,
      tag_id: 1,
      grade_weight: 1.5,
      grade: 1.5
    )
  }

  before(:each) do
    assign(:aim/checklist_checklist_tag_grade_weight, aim/checklist_checklist_tag_grade_weight)
  end

  it "renders the edit aim/checklist_checklist_tag_grade_weight form" do
    render

    assert_select "form[action=?][method=?]", aim/checklist_checklist_tag_grade_weight_path(aim/checklist_checklist_tag_grade_weight), "post" do

      assert_select "input[name=?]", "aim/checklist_checklist_tag_grade_weight[checklist_id]"

      assert_select "input[name=?]", "aim/checklist_checklist_tag_grade_weight[tag_id]"

      assert_select "input[name=?]", "aim/checklist_checklist_tag_grade_weight[grade_weight]"

      assert_select "input[name=?]", "aim/checklist_checklist_tag_grade_weight[grade]"
    end
  end
end
