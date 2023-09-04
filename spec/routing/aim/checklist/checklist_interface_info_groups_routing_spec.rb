require "rails_helper"

RSpec.describe Aim::Checklist::ChecklistInterfaceInfoGroupsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/aim/checklist/checklist_interface_info_groups").to route_to("aim/checklist/checklist_interface_info_groups#index")
    end

    it "routes to #new" do
      expect(get: "/aim/checklist/checklist_interface_info_groups/new").to route_to("aim/checklist/checklist_interface_info_groups#new")
    end

    it "routes to #show" do
      expect(get: "/aim/checklist/checklist_interface_info_groups/1").to route_to("aim/checklist/checklist_interface_info_groups#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/aim/checklist/checklist_interface_info_groups/1/edit").to route_to("aim/checklist/checklist_interface_info_groups#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/aim/checklist/checklist_interface_info_groups").to route_to("aim/checklist/checklist_interface_info_groups#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/aim/checklist/checklist_interface_info_groups/1").to route_to("aim/checklist/checklist_interface_info_groups#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/aim/checklist/checklist_interface_info_groups/1").to route_to("aim/checklist/checklist_interface_info_groups#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/aim/checklist/checklist_interface_info_groups/1").to route_to("aim/checklist/checklist_interface_info_groups#destroy", id: "1")
    end
  end
end
