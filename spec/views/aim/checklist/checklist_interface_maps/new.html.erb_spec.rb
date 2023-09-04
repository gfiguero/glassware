require 'rails_helper'

RSpec.describe "aim/checklist/checklist_interface_maps/new", type: :view do
  before(:each) do
    assign(:aim/checklist_checklist_interface_map, Aim::Checklist::ChecklistInterfaceMap.new(
      map_id: 1
    ))
  end

  it "renders new aim/checklist_checklist_interface_map form" do
    render

    assert_select "form[action=?][method=?]", aim_checklist_checklist_interface_maps_path, "post" do

      assert_select "input[name=?]", "aim/checklist_checklist_interface_map[map_id]"
    end
  end
end
