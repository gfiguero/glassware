require 'rails_helper'

RSpec.describe "aim/checklist/checklist_step_interface_infrastructure_interfaces/edit", type: :view do
  let(:aim/checklist_checklist_step_interface_infrastructure_interface) {
    Aim::Checklist::ChecklistStepInterfaceInfrastructureInterface.create!(
      infrastructure_interface_id: 1
    )
  }

  before(:each) do
    assign(:aim/checklist_checklist_step_interface_infrastructure_interface, aim/checklist_checklist_step_interface_infrastructure_interface)
  end

  it "renders the edit aim/checklist_checklist_step_interface_infrastructure_interface form" do
    render

    assert_select "form[action=?][method=?]", aim/checklist_checklist_step_interface_infrastructure_interface_path(aim/checklist_checklist_step_interface_infrastructure_interface), "post" do

      assert_select "input[name=?]", "aim/checklist_checklist_step_interface_infrastructure_interface[infrastructure_interface_id]"
    end
  end
end
