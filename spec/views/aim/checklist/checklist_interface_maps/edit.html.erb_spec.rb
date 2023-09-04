require 'rails_helper'

RSpec.describe "aim/checklist/checklist_interface_maps/edit", type: :view do
  let(:aim/checklist_checklist_interface_map) {
    Aim::Checklist::ChecklistInterfaceMap.create!(
      map_id: 1
    )
  }

  before(:each) do
    assign(:aim/checklist_checklist_interface_map, aim/checklist_checklist_interface_map)
  end

  it "renders the edit aim/checklist_checklist_interface_map form" do
    render

    assert_select "form[action=?][method=?]", aim/checklist_checklist_interface_map_path(aim/checklist_checklist_interface_map), "post" do

      assert_select "input[name=?]", "aim/checklist_checklist_interface_map[map_id]"
    end
  end
end
