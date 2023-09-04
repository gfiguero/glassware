require 'rails_helper'

RSpec.describe "aim/checklist/checklist_step_interface_checklist_tags/new", type: :view do
  before(:each) do
    assign(:aim/checklist_checklist_step_interface_checklist_tag, Aim::Checklist::ChecklistStepInterfaceChecklistTag.new(
      checklist_tag_id: 1,
      grade_weight: 1.5
    ))
  end

  it "renders new aim/checklist_checklist_step_interface_checklist_tag form" do
    render

    assert_select "form[action=?][method=?]", aim_checklist_checklist_step_interface_checklist_tags_path, "post" do

      assert_select "input[name=?]", "aim/checklist_checklist_step_interface_checklist_tag[checklist_tag_id]"

      assert_select "input[name=?]", "aim/checklist_checklist_step_interface_checklist_tag[grade_weight]"
    end
  end
end
