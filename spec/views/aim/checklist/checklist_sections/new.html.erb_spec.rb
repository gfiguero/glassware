require 'rails_helper'

RSpec.describe "aim/checklist/checklist_sections/new", type: :view do
  before(:each) do
    assign(:aim/checklist_checklist_section, Aim::Checklist::ChecklistSection.new(
      checklist_section_interface_id: 1,
      checklist_id: 1,
      grade: "9.99",
      grade_weight: 1.5,
      grade_weight_percentage: 1.5,
      skipped: false,
      rank: 1
    ))
  end

  it "renders new aim/checklist_checklist_section form" do
    render

    assert_select "form[action=?][method=?]", aim_checklist_checklist_sections_path, "post" do

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
