require 'rails_helper'

RSpec.describe "aim/checklist/checklist_step_interface_checklist_tags/show", type: :view do
  before(:each) do
    assign(:aim/checklist_checklist_step_interface_checklist_tag, Aim::Checklist::ChecklistStepInterfaceChecklistTag.create!(
      checklist_tag_id: 2,
      grade_weight: 3.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3.5/)
  end
end
