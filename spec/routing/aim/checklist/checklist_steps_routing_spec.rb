require "rails_helper"

RSpec.describe Aim::Checklist::ChecklistStepsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/aim/checklist/checklist_steps").to route_to("aim/checklist/checklist_steps#index")
    end

    it "routes to #new" do
      expect(get: "/aim/checklist/checklist_steps/new").to route_to("aim/checklist/checklist_steps#new")
    end

    it "routes to #show" do
      expect(get: "/aim/checklist/checklist_steps/1").to route_to("aim/checklist/checklist_steps#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/aim/checklist/checklist_steps/1/edit").to route_to("aim/checklist/checklist_steps#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/aim/checklist/checklist_steps").to route_to("aim/checklist/checklist_steps#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/aim/checklist/checklist_steps/1").to route_to("aim/checklist/checklist_steps#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/aim/checklist/checklist_steps/1").to route_to("aim/checklist/checklist_steps#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/aim/checklist/checklist_steps/1").to route_to("aim/checklist/checklist_steps#destroy", id: "1")
    end
  end
end
