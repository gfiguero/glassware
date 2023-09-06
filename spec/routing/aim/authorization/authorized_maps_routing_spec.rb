require "rails_helper"

RSpec.describe Aim::Authorization::AuthorizedMapsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/aim/authorization/authorized_maps").to route_to("aim/authorization/authorized_maps#index")
    end

    it "routes to #new" do
      expect(get: "/aim/authorization/authorized_maps/new").to route_to("aim/authorization/authorized_maps#new")
    end

    it "routes to #show" do
      expect(get: "/aim/authorization/authorized_maps/1").to route_to("aim/authorization/authorized_maps#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/aim/authorization/authorized_maps/1/edit").to route_to("aim/authorization/authorized_maps#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/aim/authorization/authorized_maps").to route_to("aim/authorization/authorized_maps#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/aim/authorization/authorized_maps/1").to route_to("aim/authorization/authorized_maps#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/aim/authorization/authorized_maps/1").to route_to("aim/authorization/authorized_maps#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/aim/authorization/authorized_maps/1").to route_to("aim/authorization/authorized_maps#destroy", id: "1")
    end
  end
end
