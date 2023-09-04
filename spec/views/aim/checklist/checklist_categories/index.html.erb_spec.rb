require 'rails_helper'

RSpec.describe "aim/checklist/checklist_categories/index", type: :view do
  before(:each) do
    assign(:aim_checklist_checklist_categories, [
      Aim::Checklist::ChecklistCategory.create!(
        name: "Name",
        icon_file_name: "Icon File Name",
        icon_content_type: "Icon Content Type",
        icon_file_size: 2,
        filterable_by_auditor: false,
        filterable_by_supervisor: false
      ),
      Aim::Checklist::ChecklistCategory.create!(
        name: "Name",
        icon_file_name: "Icon File Name",
        icon_content_type: "Icon Content Type",
        icon_file_size: 2,
        filterable_by_auditor: false,
        filterable_by_supervisor: false
      )
    ])
  end

  it "renders a list of aim/checklist/checklist_categories" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Icon File Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Icon Content Type".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
  end
end
