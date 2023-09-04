require 'rails_helper'

RSpec.describe "aim/checklist/checklist_category_groups/show", type: :view do
  before(:each) do
    assign(:aim/checklist_checklist_category_group, Aim::Checklist::ChecklistCategoryGroup.create!(
      checklist_category_id: 2,
      relation_kind: "Relation Kind"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Relation Kind/)
  end
end
