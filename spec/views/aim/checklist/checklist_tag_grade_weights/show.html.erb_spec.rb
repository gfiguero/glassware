require 'rails_helper'

RSpec.describe "aim/checklist/checklist_tag_grade_weights/show", type: :view do
  before(:each) do
    assign(:aim/checklist_checklist_tag_grade_weight, Aim::Checklist::ChecklistTagGradeWeight.create!(
      tag_id: 2,
      grade_weight: 3.5,
      grade: 4.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3.5/)
    expect(rendered).to match(/4.5/)
  end
end
