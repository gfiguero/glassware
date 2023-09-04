require "rails_helper"

RSpec.describe Aim::Checklist::ChecklistInterfaceCustomReportsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/aim/checklist/checklist_interface_custom_reports").to route_to("aim/checklist/checklist_interface_custom_reports#index")
    end

    it "routes to #new" do
      expect(get: "/aim/checklist/checklist_interface_custom_reports/new").to route_to("aim/checklist/checklist_interface_custom_reports#new")
    end

    it "routes to #show" do
      expect(get: "/aim/checklist/checklist_interface_custom_reports/1").to route_to("aim/checklist/checklist_interface_custom_reports#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/aim/checklist/checklist_interface_custom_reports/1/edit").to route_to("aim/checklist/checklist_interface_custom_reports#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/aim/checklist/checklist_interface_custom_reports").to route_to("aim/checklist/checklist_interface_custom_reports#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/aim/checklist/checklist_interface_custom_reports/1").to route_to("aim/checklist/checklist_interface_custom_reports#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/aim/checklist/checklist_interface_custom_reports/1").to route_to("aim/checklist/checklist_interface_custom_reports#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/aim/checklist/checklist_interface_custom_reports/1").to route_to("aim/checklist/checklist_interface_custom_reports#destroy", id: "1")
    end
  end
end
