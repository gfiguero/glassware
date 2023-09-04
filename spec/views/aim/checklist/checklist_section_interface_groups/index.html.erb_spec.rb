require 'rails_helper'

RSpec.describe "aim/checklist/checklist_section_interface_groups/index", type: :view do
  before(:each) do
    assign(:aim_checklist_checklist_section_interface_groups, [
      Aim::Checklist::ChecklistSectionInterfaceGroup.create!(
        group_id: 2
      ),
      Aim::Checklist::ChecklistSectionInterfaceGroup.create!(
        group_id: 2
      )
    ])
  end

  it "renders a list of aim/checklist/checklist_section_interface_groups" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
  end
end
