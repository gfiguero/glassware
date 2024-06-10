require "rails_helper"

RSpec.describe TestTagsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/test_tags").to route_to("test_tags#index")
    end

    it "routes to #new" do
      expect(get: "/test_tags/new").to route_to("test_tags#new")
    end

    it "routes to #show" do
      expect(get: "/test_tags/1").to route_to("test_tags#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/test_tags/1/edit").to route_to("test_tags#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/test_tags").to route_to("test_tags#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/test_tags/1").to route_to("test_tags#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/test_tags/1").to route_to("test_tags#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/test_tags/1").to route_to("test_tags#destroy", id: "1")
    end
  end
end
