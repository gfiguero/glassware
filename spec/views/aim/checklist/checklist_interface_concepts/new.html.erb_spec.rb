require 'rails_helper'

RSpec.describe "aim/checklist/checklist_interface_concepts/new", type: :view do
  before(:each) do
    assign(:aim/checklist_checklist_interface_concept, Aim::Checklist::ChecklistInterfaceConcept.new(
      concept_id: 1,
      checklist_interface_id: 1
    ))
  end

  it "renders new aim/checklist_checklist_interface_concept form" do
    render

    assert_select "form[action=?][method=?]", aim_checklist_checklist_interface_concepts_path, "post" do

      assert_select "input[name=?]", "aim/checklist_checklist_interface_concept[concept_id]"

      assert_select "input[name=?]", "aim/checklist_checklist_interface_concept[checklist_interface_id]"
    end
  end
end
