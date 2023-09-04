require 'rails_helper'

RSpec.describe "aim/checklist/checklist_step_interface_checklist_tags/edit", type: :view do
  let(:aim/checklist_checklist_step_interface_checklist_tag) {
    Aim::Checklist::ChecklistStepInterfaceChecklistTag.create!(
      checklist_tag_id: 1,
      grade_weight: 1.5
    )
  }

  before(:each) do
    assign(:aim/checklist_checklist_step_interface_checklist_tag, aim/checklist_checklist_step_interface_checklist_tag)
  end

  it "renders the edit aim/checklist_checklist_step_interface_checklist_tag form" do
    render

    assert_select "form[action=?][method=?]", aim/checklist_checklist_step_interface_checklist_tag_path(aim/checklist_checklist_step_interface_checklist_tag), "post" do

      assert_select "input[name=?]", "aim/checklist_checklist_step_interface_checklist_tag[checklist_tag_id]"

      assert_select "input[name=?]", "aim/checklist_checklist_step_interface_checklist_tag[grade_weight]"
    end
  end
end
