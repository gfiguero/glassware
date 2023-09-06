require "rails_helper"

RSpec.describe Authorization::RequestTypesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/authorization/request_types").to route_to("authorization/request_types#index")
    end

    it "routes to #new" do
      expect(get: "/authorization/request_types/new").to route_to("authorization/request_types#new")
    end

    it "routes to #show" do
      expect(get: "/authorization/request_types/1").to route_to("authorization/request_types#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/authorization/request_types/1/edit").to route_to("authorization/request_types#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/authorization/request_types").to route_to("authorization/request_types#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/authorization/request_types/1").to route_to("authorization/request_types#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/authorization/request_types/1").to route_to("authorization/request_types#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/authorization/request_types/1").to route_to("authorization/request_types#destroy", id: "1")
    end
  end
end
