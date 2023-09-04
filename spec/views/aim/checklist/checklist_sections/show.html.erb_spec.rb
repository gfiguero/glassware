require 'rails_helper'

RSpec.describe "aim/checklist/checklist_sections/show", type: :view do
  before(:each) do
    assign(:aim/checklist_checklist_section, Aim::Checklist::ChecklistSection.create!(
      checklist_section_interface_id: 2,
      checklist_id: 3,
      grade: "9.99",
      grade_weight: 4.5,
      grade_weight_percentage: 5.5,
      skipped: false,
      rank: 6
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/4.5/)
    expect(rendered).to match(/5.5/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/6/)
  end
end
