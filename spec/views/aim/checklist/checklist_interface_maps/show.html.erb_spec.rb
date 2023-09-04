require 'rails_helper'

RSpec.describe "aim/checklist/checklist_interface_maps/show", type: :view do
  before(:each) do
    assign(:aim/checklist_checklist_interface_map, Aim::Checklist::ChecklistInterfaceMap.create!(
      checklist_interface_id: 2,
      map_id: 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
