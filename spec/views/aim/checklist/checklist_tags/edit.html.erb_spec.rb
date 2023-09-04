require 'rails_helper'

RSpec.describe "aim/checklist/checklist_tags/edit", type: :view do
  let(:aim/checklist_checklist_tag) {
    Aim::Checklist::ChecklistTag.create!(
      checklist_interface_id: 1,
      name: "MyString",
      chosen_grade_option_name: "MyString",
      override_grade: 1,
      override_checklist_tag_id: 1,
      skipped: false,
      tag_type: 1,
      grade_weight: 1.5,
      rank: 1,
      aim_concept_id: 1
    )
  }

  before(:each) do
    assign(:aim/checklist_checklist_tag, aim/checklist_checklist_tag)
  end

  it "renders the edit aim/checklist_checklist_tag form" do
    render

    assert_select "form[action=?][method=?]", aim/checklist_checklist_tag_path(aim/checklist_checklist_tag), "post" do

      assert_select "input[name=?]", "aim/checklist_checklist_tag[checklist_interface_id]"

      assert_select "input[name=?]", "aim/checklist_checklist_tag[name]"

      assert_select "input[name=?]", "aim/checklist_checklist_tag[chosen_grade_option_name]"

      assert_select "input[name=?]", "aim/checklist_checklist_tag[override_grade]"

      assert_select "input[name=?]", "aim/checklist_checklist_tag[override_checklist_tag_id]"

      assert_select "input[name=?]", "aim/checklist_checklist_tag[skipped]"

      assert_select "input[name=?]", "aim/checklist_checklist_tag[tag_type]"

      assert_select "input[name=?]", "aim/checklist_checklist_tag[grade_weight]"

      assert_select "input[name=?]", "aim/checklist_checklist_tag[rank]"

      assert_select "input[name=?]", "aim/checklist_checklist_tag[aim_concept_id]"
    end
  end
end
