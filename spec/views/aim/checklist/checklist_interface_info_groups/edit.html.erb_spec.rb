require 'rails_helper'

RSpec.describe "aim/checklist/checklist_interface_info_groups/edit", type: :view do
  let(:aim/checklist_checklist_interface_info_group) {
    Aim::Checklist::ChecklistInterfaceInfoGroup.create!(
      checklist_interface_id: 1,
      group_id: 1
    )
  }

  before(:each) do
    assign(:aim/checklist_checklist_interface_info_group, aim/checklist_checklist_interface_info_group)
  end

  it "renders the edit aim/checklist_checklist_interface_info_group form" do
    render

    assert_select "form[action=?][method=?]", aim/checklist_checklist_interface_info_group_path(aim/checklist_checklist_interface_info_group), "post" do

      assert_select "input[name=?]", "aim/checklist_checklist_interface_info_group[checklist_interface_id]"

      assert_select "input[name=?]", "aim/checklist_checklist_interface_info_group[group_id]"
    end
  end
end
