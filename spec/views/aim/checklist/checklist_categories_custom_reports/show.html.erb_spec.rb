require 'rails_helper'

RSpec.describe "aim/checklist/checklist_categories_custom_reports/show", type: :view do
  before(:each) do
    assign(:aim/checklist_checklist_categories_custom_report, Aim::Checklist::ChecklistCategoriesCustomReport.create!(
      custom_report_id: 2,
      checklist_category_id: 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
