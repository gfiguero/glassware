require 'rails_helper'

RSpec.describe "aim/checklist/checklist_category_groups/edit", type: :view do
  let(:aim/checklist_checklist_category_group) {
    Aim::Checklist::ChecklistCategoryGroup.create!(
      group_id: 1,
      checklist_category_id: 1,
      relation_kind: "MyString"
    )
  }

  before(:each) do
    assign(:aim/checklist_checklist_category_group, aim/checklist_checklist_category_group)
  end

  it "renders the edit aim/checklist_checklist_category_group form" do
    render

    assert_select "form[action=?][method=?]", aim/checklist_checklist_category_group_path(aim/checklist_checklist_category_group), "post" do

      assert_select "input[name=?]", "aim/checklist_checklist_category_group[group_id]"

      assert_select "input[name=?]", "aim/checklist_checklist_category_group[checklist_category_id]"

      assert_select "input[name=?]", "aim/checklist_checklist_category_group[relation_kind]"
    end
  end
end
