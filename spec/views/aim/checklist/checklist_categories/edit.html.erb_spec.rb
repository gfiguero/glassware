require 'rails_helper'

RSpec.describe "aim/checklist/checklist_categories/edit", type: :view do
  let(:aim/checklist_checklist_category) {
    Aim::Checklist::ChecklistCategory.create!(
      name: "MyString",
      icon_file_name: "MyString",
      icon_content_type: "MyString",
      icon_file_size: 1,
      filterable_by_auditor: false,
      filterable_by_supervisor: false
    )
  }

  before(:each) do
    assign(:aim/checklist_checklist_category, aim/checklist_checklist_category)
  end

  it "renders the edit aim/checklist_checklist_category form" do
    render

    assert_select "form[action=?][method=?]", aim/checklist_checklist_category_path(aim/checklist_checklist_category), "post" do

      assert_select "input[name=?]", "aim/checklist_checklist_category[name]"

      assert_select "input[name=?]", "aim/checklist_checklist_category[icon_file_name]"

      assert_select "input[name=?]", "aim/checklist_checklist_category[icon_content_type]"

      assert_select "input[name=?]", "aim/checklist_checklist_category[icon_file_size]"

      assert_select "input[name=?]", "aim/checklist_checklist_category[filterable_by_auditor]"

      assert_select "input[name=?]", "aim/checklist_checklist_category[filterable_by_supervisor]"
    end
  end
end
