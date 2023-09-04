require 'rails_helper'

RSpec.describe "aim/checklist/checklist_interface_info_groups/new", type: :view do
  before(:each) do
    assign(:aim/checklist_checklist_interface_info_group, Aim::Checklist::ChecklistInterfaceInfoGroup.new(
      group_id: 1
    ))
  end

  it "renders new aim/checklist_checklist_interface_info_group form" do
    render

    assert_select "form[action=?][method=?]", aim_checklist_checklist_interface_info_groups_path, "post" do

      assert_select "input[name=?]", "aim/checklist_checklist_interface_info_group[group_id]"
    end
  end
end
