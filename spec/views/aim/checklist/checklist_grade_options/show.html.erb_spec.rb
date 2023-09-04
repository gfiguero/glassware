require 'rails_helper'

RSpec.describe "aim/checklist/checklist_grade_options/show", type: :view do
  before(:each) do
    assign(:aim/checklist_checklist_grade_option, Aim::Checklist::ChecklistGradeOption.create!(
      checklist_step_interface_id: 2,
      name: "Name",
      grade: 3,
      incident_interface_id: 4,
      comments: 5,
      pictures: 6,
      documents: 7,
      default_tag_for_incident_id: 8
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/7/)
    expect(rendered).to match(/8/)
  end
end
