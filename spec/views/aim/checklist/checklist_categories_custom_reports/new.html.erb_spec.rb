require 'rails_helper'

RSpec.describe "aim/checklist/checklist_categories_custom_reports/new", type: :view do
  before(:each) do
    assign(:aim/checklist_checklist_categories_custom_report, Aim::Checklist::ChecklistCategoriesCustomReport.new(
      custom_report_id: 1,
      checklist_category_id: 1
    ))
  end

  it "renders new aim/checklist_checklist_categories_custom_report form" do
    render

    assert_select "form[action=?][method=?]", aim_checklist_checklist_categories_custom_reports_path, "post" do

      assert_select "input[name=?]", "aim/checklist_checklist_categories_custom_report[custom_report_id]"

      assert_select "input[name=?]", "aim/checklist_checklist_categories_custom_report[checklist_category_id]"
    end
  end
end
