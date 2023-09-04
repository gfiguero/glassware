require 'rails_helper'

RSpec.describe "aim/checklist/checklist_step_interface_infrastructure_interfaces/show", type: :view do
  before(:each) do
    assign(:aim/checklist_checklist_step_interface_infrastructure_interface, Aim::Checklist::ChecklistStepInterfaceInfrastructureInterface.create!(
      checklist_step_interface_id: 2,
      infrastructure_interface_id: 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
