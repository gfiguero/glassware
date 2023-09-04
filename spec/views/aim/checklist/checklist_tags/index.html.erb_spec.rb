require 'rails_helper'

RSpec.describe "aim/checklist/checklist_tags/index", type: :view do
  before(:each) do
    assign(:aim_checklist_checklist_tags, [
      Aim::Checklist::ChecklistTag.create!(
        checklist_interface_id: 2,
        name: "Name",
        chosen_grade_option_name: "Chosen Grade Option Name",
        override_grade: 3,
        override_checklist_tag_id: 4,
        skipped: false,
        tag_type: 5,
        grade_weight: 6.5,
        rank: 7,
        aim_concept_id: 8
      ),
      Aim::Checklist::ChecklistTag.create!(
        checklist_interface_id: 2,
        name: "Name",
        chosen_grade_option_name: "Chosen Grade Option Name",
        override_grade: 3,
        override_checklist_tag_id: 4,
        skipped: false,
        tag_type: 5,
        grade_weight: 6.5,
        rank: 7,
        aim_concept_id: 8
      )
    ])
  end

  it "renders a list of aim/checklist/checklist_tags" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Chosen Grade Option Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(4.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(5.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(6.5.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(7.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(8.to_s), count: 2
  end
end
