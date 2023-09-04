require 'rails_helper'

RSpec.describe "aim/checklist/checklist_step_checklist_tags/index", type: :view do
  before(:each) do
    assign(:aim_checklist_checklist_step_checklist_tags, [
      Aim::Checklist::ChecklistStepChecklistTag.create!(
        checklist_step_id: 2,
        checklist_tag_id: 3,
        grade_weight: 4.5
      ),
      Aim::Checklist::ChecklistStepChecklistTag.create!(
        checklist_step_id: 2,
        checklist_tag_id: 3,
        grade_weight: 4.5
      )
    ])
  end

  it "renders a list of aim/checklist/checklist_step_checklist_tags" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(4.5.to_s), count: 2
  end
end
