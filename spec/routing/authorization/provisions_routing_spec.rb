require "rails_helper"

RSpec.describe Authorization::ProvisionsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/authorization/provisions").to route_to("authorization/provisions#index")
    end

    it "routes to #new" do
      expect(get: "/authorization/provisions/new").to route_to("authorization/provisions#new")
    end

    it "routes to #show" do
      expect(get: "/authorization/provisions/1").to route_to("authorization/provisions#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/authorization/provisions/1/edit").to route_to("authorization/provisions#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/authorization/provisions").to route_to("authorization/provisions#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/authorization/provisions/1").to route_to("authorization/provisions#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/authorization/provisions/1").to route_to("authorization/provisions#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/authorization/provisions/1").to route_to("authorization/provisions#destroy", id: "1")
    end
  end
end
