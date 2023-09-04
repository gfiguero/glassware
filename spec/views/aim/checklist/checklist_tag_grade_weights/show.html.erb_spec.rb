require 'rails_helper'

RSpec.describe "aim/checklist/checklist_tag_grade_weights/show", type: :view do
  before(:each) do
    assign(:aim/checklist_checklist_tag_grade_weight, Aim::Checklist::ChecklistTagGradeWeight.create!(
      checklist_id: 2,
      tag_id: 3,
      grade_weight: 4.5,
      grade: 5.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4.5/)
    expect(rendered).to match(/5.5/)
  end
end
