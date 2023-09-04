require 'rails_helper'

RSpec.describe "aim/checklist/checklist_sections/index", type: :view do
  before(:each) do
    assign(:aim_checklist_checklist_sections, [
      Aim::Checklist::ChecklistSection.create!(
        checklist_id: 2,
        grade: "9.99",
        grade_weight: 3.5,
        grade_weight_percentage: 4.5,
        skipped: false,
        rank: 5
      ),
      Aim::Checklist::ChecklistSection.create!(
        checklist_id: 2,
        grade: "9.99",
        grade_weight: 3.5,
        grade_weight_percentage: 4.5,
        skipped: false,
        rank: 5
      )
    ])
  end

  it "renders a list of aim/checklist/checklist_sections" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("9.99".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.5.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(4.5.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(5.to_s), count: 2
  end
end
