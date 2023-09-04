require 'rails_helper'

RSpec.describe "aim/checklist/checklist_section_interfaces/index", type: :view do
  before(:each) do
    assign(:aim_checklist_checklist_section_interfaces, [
      Aim::Checklist::ChecklistSectionInterface.create!(
        name: "Name",
        grade_weight: 2.5,
        description: "MyText",
        rank: 3.5
      ),
      Aim::Checklist::ChecklistSectionInterface.create!(
        name: "Name",
        grade_weight: 2.5,
        description: "MyText",
        rank: 3.5
      )
    ])
  end

  it "renders a list of aim/checklist/checklist_section_interfaces" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.5.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.5.to_s), count: 2
  end
end
