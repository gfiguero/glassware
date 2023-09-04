require 'rails_helper'

RSpec.describe "aim/checklist/checklist_grade_options/index", type: :view do
  before(:each) do
    assign(:aim_checklist_checklist_grade_options, [
      Aim::Checklist::ChecklistGradeOption.create!(
        checklist_step_interface_id: 2,
        name: "Name",
        grade: 3,
        incident_interface_id: 4,
        comments: 5,
        pictures: 6,
        documents: 7,
        default_tag_for_incident_id: 8
      ),
      Aim::Checklist::ChecklistGradeOption.create!(
        checklist_step_interface_id: 2,
        name: "Name",
        grade: 3,
        incident_interface_id: 4,
        comments: 5,
        pictures: 6,
        documents: 7,
        default_tag_for_incident_id: 8
      )
    ])
  end

  it "renders a list of aim/checklist/checklist_grade_options" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(4.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(5.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(6.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(7.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(8.to_s), count: 2
  end
end
