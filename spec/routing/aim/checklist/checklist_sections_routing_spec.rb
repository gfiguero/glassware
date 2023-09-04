require "rails_helper"

RSpec.describe Aim::Checklist::ChecklistSectionsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/aim/checklist/checklist_sections").to route_to("aim/checklist/checklist_sections#index")
    end

    it "routes to #new" do
      expect(get: "/aim/checklist/checklist_sections/new").to route_to("aim/checklist/checklist_sections#new")
    end

    it "routes to #show" do
      expect(get: "/aim/checklist/checklist_sections/1").to route_to("aim/checklist/checklist_sections#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/aim/checklist/checklist_sections/1/edit").to route_to("aim/checklist/checklist_sections#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/aim/checklist/checklist_sections").to route_to("aim/checklist/checklist_sections#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/aim/checklist/checklist_sections/1").to route_to("aim/checklist/checklist_sections#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/aim/checklist/checklist_sections/1").to route_to("aim/checklist/checklist_sections#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/aim/checklist/checklist_sections/1").to route_to("aim/checklist/checklist_sections#destroy", id: "1")
    end
  end
end
