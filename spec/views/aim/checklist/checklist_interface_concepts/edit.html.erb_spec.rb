require 'rails_helper'

RSpec.describe "aim/checklist/checklist_interface_concepts/edit", type: :view do
  let(:aim/checklist_checklist_interface_concept) {
    Aim::Checklist::ChecklistInterfaceConcept.create!(
      checklist_interface_id: 1
    )
  }

  before(:each) do
    assign(:aim/checklist_checklist_interface_concept, aim/checklist_checklist_interface_concept)
  end

  it "renders the edit aim/checklist_checklist_interface_concept form" do
    render

    assert_select "form[action=?][method=?]", aim/checklist_checklist_interface_concept_path(aim/checklist_checklist_interface_concept), "post" do

      assert_select "input[name=?]", "aim/checklist_checklist_interface_concept[checklist_interface_id]"
    end
  end
end
