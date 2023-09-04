require 'rails_helper'

RSpec.describe "aim/checklist/checklist_section_interfaces/new", type: :view do
  before(:each) do
    assign(:aim/checklist_checklist_section_interface, Aim::Checklist::ChecklistSectionInterface.new(
      checklist_interface_id: 1,
      name: "MyString",
      grade_weight: 1.5,
      description: "MyText",
      rank: 1.5
    ))
  end

  it "renders new aim/checklist_checklist_section_interface form" do
    render

    assert_select "form[action=?][method=?]", aim_checklist_checklist_section_interfaces_path, "post" do

      assert_select "input[name=?]", "aim/checklist_checklist_section_interface[checklist_interface_id]"

      assert_select "input[name=?]", "aim/checklist_checklist_section_interface[name]"

      assert_select "input[name=?]", "aim/checklist_checklist_section_interface[grade_weight]"

      assert_select "textarea[name=?]", "aim/checklist_checklist_section_interface[description]"

      assert_select "input[name=?]", "aim/checklist_checklist_section_interface[rank]"
    end
  end
end
