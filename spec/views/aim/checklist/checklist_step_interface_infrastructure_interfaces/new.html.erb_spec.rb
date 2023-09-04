require 'rails_helper'

RSpec.describe "aim/checklist/checklist_step_interface_infrastructure_interfaces/new", type: :view do
  before(:each) do
    assign(:aim/checklist_checklist_step_interface_infrastructure_interface, Aim::Checklist::ChecklistStepInterfaceInfrastructureInterface.new(
      infrastructure_interface_id: 1
    ))
  end

  it "renders new aim/checklist_checklist_step_interface_infrastructure_interface form" do
    render

    assert_select "form[action=?][method=?]", aim_checklist_checklist_step_interface_infrastructure_interfaces_path, "post" do

      assert_select "input[name=?]", "aim/checklist_checklist_step_interface_infrastructure_interface[infrastructure_interface_id]"
    end
  end
end
