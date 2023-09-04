require 'rails_helper'

RSpec.describe "aim/checklist/checklist_section_interface_groups/edit", type: :view do
  let(:aim/checklist_checklist_section_interface_group) {
    Aim::Checklist::ChecklistSectionInterfaceGroup.create!(
      checklist_section_interface_id: 1,
      group_id: 1
    )
  }

  before(:each) do
    assign(:aim/checklist_checklist_section_interface_group, aim/checklist_checklist_section_interface_group)
  end

  it "renders the edit aim/checklist_checklist_section_interface_group form" do
    render

    assert_select "form[action=?][method=?]", aim/checklist_checklist_section_interface_group_path(aim/checklist_checklist_section_interface_group), "post" do

      assert_select "input[name=?]", "aim/checklist_checklist_section_interface_group[checklist_section_interface_id]"

      assert_select "input[name=?]", "aim/checklist_checklist_section_interface_group[group_id]"
    end
  end
end
