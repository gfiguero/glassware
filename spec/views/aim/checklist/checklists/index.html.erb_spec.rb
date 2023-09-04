require 'rails_helper'

RSpec.describe "aim/checklist/checklists/index", type: :view do
  before(:each) do
    assign(:aim_checklist_checklists, [
      Aim::Checklist::Checklist.create!(
        checklist_interface_id: 2,
        map_id: 3,
        store_id: 4,
        user_id: 5,
        global_grade: "9.99",
        service_id: 6,
        infrastructure_id: 7,
        slug: "Slug",
        user_start_position: "",
        user_finish_position: "",
        grade_min: 8,
        grade_max: 9
      ),
      Aim::Checklist::Checklist.create!(
        checklist_interface_id: 2,
        map_id: 3,
        store_id: 4,
        user_id: 5,
        global_grade: "9.99",
        service_id: 6,
        infrastructure_id: 7,
        slug: "Slug",
        user_start_position: "",
        user_finish_position: "",
        grade_min: 8,
        grade_max: 9
      )
    ])
  end

  it "renders a list of aim/checklist/checklists" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(4.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(5.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("9.99".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(6.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(7.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Slug".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(8.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(9.to_s), count: 2
  end
end
