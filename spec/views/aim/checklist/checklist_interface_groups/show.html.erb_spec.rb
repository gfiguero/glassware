require 'rails_helper'

RSpec.describe "aim/checklist/checklist_interface_groups/show", type: :view do
  before(:each) do
    assign(:aim/checklist_checklist_interface_group, Aim::Checklist::ChecklistInterfaceGroup.create!(
      checklist_interface_id: 2,
      group_id: 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
