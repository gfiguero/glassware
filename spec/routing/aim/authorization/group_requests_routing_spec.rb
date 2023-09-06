require "rails_helper"

RSpec.describe Aim::Authorization::GroupRequestsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/aim/authorization/group_requests").to route_to("aim/authorization/group_requests#index")
    end

    it "routes to #new" do
      expect(get: "/aim/authorization/group_requests/new").to route_to("aim/authorization/group_requests#new")
    end

    it "routes to #show" do
      expect(get: "/aim/authorization/group_requests/1").to route_to("aim/authorization/group_requests#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/aim/authorization/group_requests/1/edit").to route_to("aim/authorization/group_requests#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/aim/authorization/group_requests").to route_to("aim/authorization/group_requests#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/aim/authorization/group_requests/1").to route_to("aim/authorization/group_requests#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/aim/authorization/group_requests/1").to route_to("aim/authorization/group_requests#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/aim/authorization/group_requests/1").to route_to("aim/authorization/group_requests#destroy", id: "1")
    end
  end
end
