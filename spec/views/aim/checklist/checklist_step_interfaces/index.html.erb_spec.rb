require 'rails_helper'

RSpec.describe "aim/checklist/checklist_step_interfaces/index", type: :view do
  before(:each) do
    assign(:aim_checklist_checklist_step_interfaces, [
      Aim::Checklist::ChecklistStepInterface.create!(
        name: "Name",
        description: "MyText",
        comments_when_high_grade: 2,
        pictures_when_high_grade: 3,
        documents_when_high_grade: 4,
        has_grade: false,
        low_grade: 5,
        incident_interface_id: 6,
        required: false,
        skippable: false,
        grade_weight: 7.5,
        light_question: false,
        comments_when_low_grade: 8,
        pictures_when_low_grade: 9,
        documents_when_low_grade: 10,
        parent_checklist_step_interface_id: 11,
        parent_checklist_grade_option_id: 12,
        default_grade: 13,
        default_checklist_grade_option_id: 14,
        rank: 15.5
      ),
      Aim::Checklist::ChecklistStepInterface.create!(
        name: "Name",
        description: "MyText",
        comments_when_high_grade: 2,
        pictures_when_high_grade: 3,
        documents_when_high_grade: 4,
        has_grade: false,
        low_grade: 5,
        incident_interface_id: 6,
        required: false,
        skippable: false,
        grade_weight: 7.5,
        light_question: false,
        comments_when_low_grade: 8,
        pictures_when_low_grade: 9,
        documents_when_low_grade: 10,
        parent_checklist_step_interface_id: 11,
        parent_checklist_grade_option_id: 12,
        default_grade: 13,
        default_checklist_grade_option_id: 14,
        rank: 15.5
      )
    ])
  end

  it "renders a list of aim/checklist/checklist_step_interfaces" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(4.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(5.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(6.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(7.5.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(8.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(9.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(10.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(11.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(12.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(13.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(14.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(15.5.to_s), count: 2
  end
end
