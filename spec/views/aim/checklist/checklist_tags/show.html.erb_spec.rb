require 'rails_helper'

RSpec.describe "aim/checklist/checklist_tags/show", type: :view do
  before(:each) do
    assign(:aim/checklist_checklist_tag, Aim::Checklist::ChecklistTag.create!(
      name: "Name",
      chosen_grade_option_name: "Chosen Grade Option Name",
      override_grade: 2,
      override_checklist_tag_id: 3,
      skipped: false,
      tag_type: 4,
      grade_weight: 5.5,
      rank: 6,
      aim_concept_id: 7
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Chosen Grade Option Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5.5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/7/)
  end
end
