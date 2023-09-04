require 'rails_helper'

RSpec.describe "aim/checklist/checklist_steps/index", type: :view do
  before(:each) do
    assign(:aim_checklist_checklist_steps, [
      Aim::Checklist::ChecklistStep.create!(
        checklist_id: 2,
        checklist_grade_option_id: 3,
        comments: "MyText",
        grade: 4,
        skipped: false,
        incident_slug: "Incident Slug",
        infrastructure_id: 5,
        forced_grade: false,
        grade_weight: 6.5,
        slug: "Slug",
        grade_weight_percentage: 7.5,
        checklist_section_id: 8,
        absolute_grade_weight_percentage: 9.5,
        absolute_grade_percentage: 10.5
      ),
      Aim::Checklist::ChecklistStep.create!(
        checklist_id: 2,
        checklist_grade_option_id: 3,
        comments: "MyText",
        grade: 4,
        skipped: false,
        incident_slug: "Incident Slug",
        infrastructure_id: 5,
        forced_grade: false,
        grade_weight: 6.5,
        slug: "Slug",
        grade_weight_percentage: 7.5,
        checklist_section_id: 8,
        absolute_grade_weight_percentage: 9.5,
        absolute_grade_percentage: 10.5
      )
    ])
  end

  it "renders a list of aim/checklist/checklist_steps" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(4.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Incident Slug".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(5.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(6.5.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Slug".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(7.5.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(8.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(9.5.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(10.5.to_s), count: 2
  end
end
