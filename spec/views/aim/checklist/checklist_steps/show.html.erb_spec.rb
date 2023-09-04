require 'rails_helper'

RSpec.describe "aim/checklist/checklist_steps/show", type: :view do
  before(:each) do
    assign(:aim/checklist_checklist_step, Aim::Checklist::ChecklistStep.create!(
      checklist_step_interface_id: 2,
      checklist_id: 3,
      checklist_grade_option_id: 4,
      comments: "MyText",
      grade: 5,
      skipped: false,
      incident_slug: "Incident Slug",
      infrastructure_id: 6,
      forced_grade: false,
      grade_weight: 7.5,
      slug: "Slug",
      grade_weight_percentage: 8.5,
      checklist_section_id: 9,
      absolute_grade_weight_percentage: 10.5,
      absolute_grade_percentage: 11.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Incident Slug/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/7.5/)
    expect(rendered).to match(/Slug/)
    expect(rendered).to match(/8.5/)
    expect(rendered).to match(/9/)
    expect(rendered).to match(/10.5/)
    expect(rendered).to match(/11.5/)
  end
end
