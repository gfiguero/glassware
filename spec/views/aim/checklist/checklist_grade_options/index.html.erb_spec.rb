require 'rails_helper'

RSpec.describe "aim/checklist/checklist_grade_options/index", type: :view do
  before(:each) do
    assign(:aim_checklist_checklist_grade_options, [
      Aim::Checklist::ChecklistGradeOption.create!(
        name: "Name",
        grade: 2,
        incident_interface_id: 3,
        comments: 4,
        pictures: 5,
        documents: 6,
        default_tag_for_incident_id: 7
      ),
      Aim::Checklist::ChecklistGradeOption.create!(
        name: "Name",
        grade: 2,
        incident_interface_id: 3,
        comments: 4,
        pictures: 5,
        documents: 6,
        default_tag_for_incident_id: 7
      )
    ])
  end

  it "renders a list of aim/checklist/checklist_grade_options" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(4.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(5.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(6.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(7.to_s), count: 2
  end
end
