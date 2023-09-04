require "rails_helper"

RSpec.describe Aim::Checklist::ChecklistStepInterfaceInfrastructureInterfacesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/aim/checklist/checklist_step_interface_infrastructure_interfaces").to route_to("aim/checklist/checklist_step_interface_infrastructure_interfaces#index")
    end

    it "routes to #new" do
      expect(get: "/aim/checklist/checklist_step_interface_infrastructure_interfaces/new").to route_to("aim/checklist/checklist_step_interface_infrastructure_interfaces#new")
    end

    it "routes to #show" do
      expect(get: "/aim/checklist/checklist_step_interface_infrastructure_interfaces/1").to route_to("aim/checklist/checklist_step_interface_infrastructure_interfaces#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/aim/checklist/checklist_step_interface_infrastructure_interfaces/1/edit").to route_to("aim/checklist/checklist_step_interface_infrastructure_interfaces#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/aim/checklist/checklist_step_interface_infrastructure_interfaces").to route_to("aim/checklist/checklist_step_interface_infrastructure_interfaces#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/aim/checklist/checklist_step_interface_infrastructure_interfaces/1").to route_to("aim/checklist/checklist_step_interface_infrastructure_interfaces#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/aim/checklist/checklist_step_interface_infrastructure_interfaces/1").to route_to("aim/checklist/checklist_step_interface_infrastructure_interfaces#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/aim/checklist/checklist_step_interface_infrastructure_interfaces/1").to route_to("aim/checklist/checklist_step_interface_infrastructure_interfaces#destroy", id: "1")
    end
  end
end
