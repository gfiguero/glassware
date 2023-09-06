require "rails_helper"

RSpec.describe Authorization::RequestsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/authorization/requests").to route_to("authorization/requests#index")
    end

    it "routes to #new" do
      expect(get: "/authorization/requests/new").to route_to("authorization/requests#new")
    end

    it "routes to #show" do
      expect(get: "/authorization/requests/1").to route_to("authorization/requests#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/authorization/requests/1/edit").to route_to("authorization/requests#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/authorization/requests").to route_to("authorization/requests#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/authorization/requests/1").to route_to("authorization/requests#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/authorization/requests/1").to route_to("authorization/requests#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/authorization/requests/1").to route_to("authorization/requests#destroy", id: "1")
    end
  end
end
