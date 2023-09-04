require 'rails_helper'

RSpec.describe "aim/checklist/checklist_grade_options/show", type: :view do
  before(:each) do
    assign(:aim/checklist_checklist_grade_option, Aim::Checklist::ChecklistGradeOption.create!(
      name: "Name",
      grade: 2,
      incident_interface_id: 3,
      comments: 4,
      pictures: 5,
      documents: 6,
      default_tag_for_incident_id: 7
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/7/)
  end
end
