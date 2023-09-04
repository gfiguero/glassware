require 'rails_helper'

RSpec.describe "aim/checklist/checklist_category_groups/new", type: :view do
  before(:each) do
    assign(:aim/checklist_checklist_category_group, Aim::Checklist::ChecklistCategoryGroup.new(
      group_id: 1,
      checklist_category_id: 1,
      relation_kind: "MyString"
    ))
  end

  it "renders new aim/checklist_checklist_category_group form" do
    render

    assert_select "form[action=?][method=?]", aim_checklist_checklist_category_groups_path, "post" do

      assert_select "input[name=?]", "aim/checklist_checklist_category_group[group_id]"

      assert_select "input[name=?]", "aim/checklist_checklist_category_group[checklist_category_id]"

      assert_select "input[name=?]", "aim/checklist_checklist_category_group[relation_kind]"
    end
  end
end
