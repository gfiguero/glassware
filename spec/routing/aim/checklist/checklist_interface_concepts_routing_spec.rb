require "rails_helper"

RSpec.describe Aim::Checklist::ChecklistInterfaceConceptsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/aim/checklist/checklist_interface_concepts").to route_to("aim/checklist/checklist_interface_concepts#index")
    end

    it "routes to #new" do
      expect(get: "/aim/checklist/checklist_interface_concepts/new").to route_to("aim/checklist/checklist_interface_concepts#new")
    end

    it "routes to #show" do
      expect(get: "/aim/checklist/checklist_interface_concepts/1").to route_to("aim/checklist/checklist_interface_concepts#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/aim/checklist/checklist_interface_concepts/1/edit").to route_to("aim/checklist/checklist_interface_concepts#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/aim/checklist/checklist_interface_concepts").to route_to("aim/checklist/checklist_interface_concepts#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/aim/checklist/checklist_interface_concepts/1").to route_to("aim/checklist/checklist_interface_concepts#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/aim/checklist/checklist_interface_concepts/1").to route_to("aim/checklist/checklist_interface_concepts#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/aim/checklist/checklist_interface_concepts/1").to route_to("aim/checklist/checklist_interface_concepts#destroy", id: "1")
    end
  end
end
