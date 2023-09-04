require 'rails_helper'

RSpec.describe "aim/checklist/checklist_section_interfaces/show", type: :view do
  before(:each) do
    assign(:aim/checklist_checklist_section_interface, Aim::Checklist::ChecklistSectionInterface.create!(
      checklist_interface_id: 2,
      name: "Name",
      grade_weight: 3.5,
      description: "MyText",
      rank: 4.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/3.5/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/4.5/)
  end
end
