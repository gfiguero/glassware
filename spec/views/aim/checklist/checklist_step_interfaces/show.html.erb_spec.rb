require 'rails_helper'

RSpec.describe "aim/checklist/checklist_step_interfaces/show", type: :view do
  before(:each) do
    assign(:aim/checklist_checklist_step_interface, Aim::Checklist::ChecklistStepInterface.create!(
      checklist_section_interface_id: 2,
      name: "Name",
      description: "MyText",
      comments_when_high_grade: 3,
      pictures_when_high_grade: 4,
      documents_when_high_grade: 5,
      has_grade: false,
      low_grade: 6,
      incident_interface_id: 7,
      required: false,
      skippable: false,
      grade_weight: 8.5,
      light_question: false,
      comments_when_low_grade: 9,
      pictures_when_low_grade: 10,
      documents_when_low_grade: 11,
      parent_checklist_step_interface_id: 12,
      parent_checklist_grade_option_id: 13,
      default_grade: 14,
      default_checklist_grade_option_id: 15,
      rank: 16.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/7/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/8.5/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/9/)
    expect(rendered).to match(/10/)
    expect(rendered).to match(/11/)
    expect(rendered).to match(/12/)
    expect(rendered).to match(/13/)
    expect(rendered).to match(/14/)
    expect(rendered).to match(/15/)
    expect(rendered).to match(/16.5/)
  end
end
