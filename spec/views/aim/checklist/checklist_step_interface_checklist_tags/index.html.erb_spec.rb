require 'rails_helper'

RSpec.describe "aim/checklist/checklist_step_interface_checklist_tags/index", type: :view do
  before(:each) do
    assign(:aim_checklist_checklist_step_interface_checklist_tags, [
      Aim::Checklist::ChecklistStepInterfaceChecklistTag.create!(
        checklist_tag_id: 2,
        grade_weight: 3.5
      ),
      Aim::Checklist::ChecklistStepInterfaceChecklistTag.create!(
        checklist_tag_id: 2,
        grade_weight: 3.5
      )
    ])
  end

  it "renders a list of aim/checklist/checklist_step_interface_checklist_tags" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.5.to_s), count: 2
  end
end
