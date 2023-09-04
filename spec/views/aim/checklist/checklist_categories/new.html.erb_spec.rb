require 'rails_helper'

RSpec.describe "aim/checklist/checklist_categories/new", type: :view do
  before(:each) do
    assign(:aim/checklist_checklist_category, Aim::Checklist::ChecklistCategory.new(
      name: "MyString",
      icon_file_name: "MyString",
      icon_content_type: "MyString",
      icon_file_size: 1,
      filterable_by_auditor: false,
      filterable_by_supervisor: false
    ))
  end

  it "renders new aim/checklist_checklist_category form" do
    render

    assert_select "form[action=?][method=?]", aim_checklist_checklist_categories_path, "post" do

      assert_select "input[name=?]", "aim/checklist_checklist_category[name]"

      assert_select "input[name=?]", "aim/checklist_checklist_category[icon_file_name]"

      assert_select "input[name=?]", "aim/checklist_checklist_category[icon_content_type]"

      assert_select "input[name=?]", "aim/checklist_checklist_category[icon_file_size]"

      assert_select "input[name=?]", "aim/checklist_checklist_category[filterable_by_auditor]"

      assert_select "input[name=?]", "aim/checklist_checklist_category[filterable_by_supervisor]"
    end
  end
end
