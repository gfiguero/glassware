require 'rails_helper'

RSpec.describe "aim/checklist/checklist_sections/show", type: :view do
  before(:each) do
    assign(:aim/checklist_checklist_section, Aim::Checklist::ChecklistSection.create!(
      checklist_id: 2,
      grade: "9.99",
      grade_weight: 3.5,
      grade_weight_percentage: 4.5,
      skipped: false,
      rank: 5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/3.5/)
    expect(rendered).to match(/4.5/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/5/)
  end
end
