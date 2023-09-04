require 'rails_helper'

RSpec.describe "aim/checklist/checklist_categories/show", type: :view do
  before(:each) do
    assign(:aim/checklist_checklist_category, Aim::Checklist::ChecklistCategory.create!(
      name: "Name",
      icon_file_name: "Icon File Name",
      icon_content_type: "Icon Content Type",
      icon_file_size: 2,
      filterable_by_auditor: false,
      filterable_by_supervisor: false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Icon File Name/)
    expect(rendered).to match(/Icon Content Type/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
  end
end
