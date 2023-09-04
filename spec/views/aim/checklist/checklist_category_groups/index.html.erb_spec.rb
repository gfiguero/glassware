require 'rails_helper'

RSpec.describe "aim/checklist/checklist_category_groups/index", type: :view do
  before(:each) do
    assign(:aim_checklist_checklist_category_groups, [
      Aim::Checklist::ChecklistCategoryGroup.create!(
        checklist_category_id: 2,
        relation_kind: "Relation Kind"
      ),
      Aim::Checklist::ChecklistCategoryGroup.create!(
        checklist_category_id: 2,
        relation_kind: "Relation Kind"
      )
    ])
  end

  it "renders a list of aim/checklist/checklist_category_groups" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Relation Kind".to_s), count: 2
  end
end
