require 'rails_helper'

RSpec.describe "aim/checklist/checklist_tag_grade_weights/index", type: :view do
  before(:each) do
    assign(:aim_checklist_checklist_tag_grade_weights, [
      Aim::Checklist::ChecklistTagGradeWeight.create!(
        tag_id: 2,
        grade_weight: 3.5,
        grade: 4.5
      ),
      Aim::Checklist::ChecklistTagGradeWeight.create!(
        tag_id: 2,
        grade_weight: 3.5,
        grade: 4.5
      )
    ])
  end

  it "renders a list of aim/checklist/checklist_tag_grade_weights" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.5.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(4.5.to_s), count: 2
  end
end
