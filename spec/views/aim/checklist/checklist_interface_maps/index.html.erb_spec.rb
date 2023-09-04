require 'rails_helper'

RSpec.describe "aim/checklist/checklist_interface_maps/index", type: :view do
  before(:each) do
    assign(:aim_checklist_checklist_interface_maps, [
      Aim::Checklist::ChecklistInterfaceMap.create!(
        checklist_interface_id: 2,
        map_id: 3
      ),
      Aim::Checklist::ChecklistInterfaceMap.create!(
        checklist_interface_id: 2,
        map_id: 3
      )
    ])
  end

  it "renders a list of aim/checklist/checklist_interface_maps" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
  end
end
