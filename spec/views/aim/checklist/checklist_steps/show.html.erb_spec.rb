require 'rails_helper'

RSpec.describe "aim/checklist/checklist_steps/show", type: :view do
  before(:each) do
    assign(:aim/checklist_checklist_step, Aim::Checklist::ChecklistStep.create!(
      checklist_id: 2,
      checklist_grade_option_id: 3,
      comments: "MyText",
      grade: 4,
      skipped: false,
      incident_slug: "Incident Slug",
      infrastructure_id: 5,
      forced_grade: false,
      grade_weight: 6.5,
      slug: "Slug",
      grade_weight_percentage: 7.5,
      checklist_section_id: 8,
      absolute_grade_weight_percentage: 9.5,
      absolute_grade_percentage: 10.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Incident Slug/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/6.5/)
    expect(rendered).to match(/Slug/)
    expect(rendered).to match(/7.5/)
    expect(rendered).to match(/8/)
    expect(rendered).to match(/9.5/)
    expect(rendered).to match(/10.5/)
  end
end
