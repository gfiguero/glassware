require 'rails_helper'

RSpec.describe "aim/checklist/checklist_tags/new", type: :view do
  before(:each) do
    assign(:aim/checklist_checklist_tag, Aim::Checklist::ChecklistTag.new(
      name: "MyString",
      chosen_grade_option_name: "MyString",
      override_grade: 1,
      override_checklist_tag_id: 1,
      skipped: false,
      tag_type: 1,
      grade_weight: 1.5,
      rank: 1,
      aim_concept_id: 1
    ))
  end

  it "renders new aim/checklist_checklist_tag form" do
    render

    assert_select "form[action=?][method=?]", aim_checklist_checklist_tags_path, "post" do

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
