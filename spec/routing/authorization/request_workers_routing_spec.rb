require "rails_helper"

RSpec.describe Authorization::RequestWorkersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/authorization/request_workers").to route_to("authorization/request_workers#index")
    end

    it "routes to #new" do
      expect(get: "/authorization/request_workers/new").to route_to("authorization/request_workers#new")
    end

    it "routes to #show" do
      expect(get: "/authorization/request_workers/1").to route_to("authorization/request_workers#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/authorization/request_workers/1/edit").to route_to("authorization/request_workers#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/authorization/request_workers").to route_to("authorization/request_workers#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/authorization/request_workers/1").to route_to("authorization/request_workers#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/authorization/request_workers/1").to route_to("authorization/request_workers#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/authorization/request_workers/1").to route_to("authorization/request_workers#destroy", id: "1")
    end
  end
end
