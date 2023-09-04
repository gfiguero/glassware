require 'rails_helper'

RSpec.describe "aim/checklist/checklist_sections/edit", type: :view do
  let(:aim/checklist_checklist_section) {
    Aim::Checklist::ChecklistSection.create!(
      checklist_section_interface_id: 1,
      checklist_id: 1,
      grade: "9.99",
      grade_weight: 1.5,
      grade_weight_percentage: 1.5,
      skipped: false,
      rank: 1
    )
  }

  before(:each) do
    assign(:aim/checklist_checklist_section, aim/checklist_checklist_section)
  end

  it "renders the edit aim/checklist_checklist_section form" do
    render

    assert_select "form[action=?][method=?]", aim/checklist_checklist_section_path(aim/checklist_checklist_section), "post" do

      assert_select "input[name=?]", "aim/checklist_checklist_section[checklist_section_interface_id]"

      assert_select "input[name=?]", "aim/checklist_checklist_section[checklist_id]"

      assert_select "input[name=?]", "aim/checklist_checklist_section[grade]"

      assert_select "input[name=?]", "aim/checklist_checklist_section[grade_weight]"

      assert_select "input[name=?]", "aim/checklist_checklist_section[grade_weight_percentage]"

      assert_select "input[name=?]", "aim/checklist_checklist_section[skipped]"

      assert_select "input[name=?]", "aim/checklist_checklist_section[rank]"
    end
  end
end
