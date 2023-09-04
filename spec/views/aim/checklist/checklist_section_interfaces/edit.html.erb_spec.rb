require 'rails_helper'

RSpec.describe "aim/checklist/checklist_section_interfaces/edit", type: :view do
  let(:aim/checklist_checklist_section_interface) {
    Aim::Checklist::ChecklistSectionInterface.create!(
      name: "MyString",
      grade_weight: 1.5,
      description: "MyText",
      rank: 1.5
    )
  }

  before(:each) do
    assign(:aim/checklist_checklist_section_interface, aim/checklist_checklist_section_interface)
  end

  it "renders the edit aim/checklist_checklist_section_interface form" do
    render

    assert_select "form[action=?][method=?]", aim/checklist_checklist_section_interface_path(aim/checklist_checklist_section_interface), "post" do

      assert_select "input[name=?]", "aim/checklist_checklist_section_interface[name]"

      assert_select "input[name=?]", "aim/checklist_checklist_section_interface[grade_weight]"

      assert_select "textarea[name=?]", "aim/checklist_checklist_section_interface[description]"

      assert_select "input[name=?]", "aim/checklist_checklist_section_interface[rank]"
    end
  end
end
