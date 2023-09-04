require 'rails_helper'

RSpec.describe "aim/checklist/checklist_section_interface_groups/new", type: :view do
  before(:each) do
    assign(:aim/checklist_checklist_section_interface_group, Aim::Checklist::ChecklistSectionInterfaceGroup.new(
      checklist_section_interface_id: 1,
      group_id: 1
    ))
  end

  it "renders new aim/checklist_checklist_section_interface_group form" do
    render

    assert_select "form[action=?][method=?]", aim_checklist_checklist_section_interface_groups_path, "post" do

      assert_select "input[name=?]", "aim/checklist_checklist_section_interface_group[checklist_section_interface_id]"

      assert_select "input[name=?]", "aim/checklist_checklist_section_interface_group[group_id]"
    end
  end
end
