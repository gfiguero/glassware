require "rails_helper"

RSpec.describe Authorization::RequestMapsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/authorization/request_maps").to route_to("authorization/request_maps#index")
    end

    it "routes to #new" do
      expect(get: "/authorization/request_maps/new").to route_to("authorization/request_maps#new")
    end

    it "routes to #show" do
      expect(get: "/authorization/request_maps/1").to route_to("authorization/request_maps#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/authorization/request_maps/1/edit").to route_to("authorization/request_maps#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/authorization/request_maps").to route_to("authorization/request_maps#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/authorization/request_maps/1").to route_to("authorization/request_maps#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/authorization/request_maps/1").to route_to("authorization/request_maps#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/authorization/request_maps/1").to route_to("authorization/request_maps#destroy", id: "1")
    end
  end
end
