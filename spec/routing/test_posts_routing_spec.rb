require "rails_helper"

RSpec.describe TestPostsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/test_posts").to route_to("test_posts#index")
    end

    it "routes to #new" do
      expect(get: "/test_posts/new").to route_to("test_posts#new")
    end

    it "routes to #show" do
      expect(get: "/test_posts/1").to route_to("test_posts#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/test_posts/1/edit").to route_to("test_posts#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/test_posts").to route_to("test_posts#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/test_posts/1").to route_to("test_posts#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/test_posts/1").to route_to("test_posts#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/test_posts/1").to route_to("test_posts#destroy", id: "1")
    end
  end
end
