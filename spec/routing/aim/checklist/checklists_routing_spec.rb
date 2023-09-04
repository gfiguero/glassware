require "rails_helper"

RSpec.describe Aim::Checklist::ChecklistsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/aim/checklist/checklists").to route_to("aim/checklist/checklists#index")
    end

    it "routes to #new" do
      expect(get: "/aim/checklist/checklists/new").to route_to("aim/checklist/checklists#new")
    end

    it "routes to #show" do
      expect(get: "/aim/checklist/checklists/1").to route_to("aim/checklist/checklists#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/aim/checklist/checklists/1/edit").to route_to("aim/checklist/checklists#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/aim/checklist/checklists").to route_to("aim/checklist/checklists#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/aim/checklist/checklists/1").to route_to("aim/checklist/checklists#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/aim/checklist/checklists/1").to route_to("aim/checklist/checklists#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/aim/checklist/checklists/1").to route_to("aim/checklist/checklists#destroy", id: "1")
    end
  end
end
