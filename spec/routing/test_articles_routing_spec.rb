require "rails_helper"

RSpec.describe TestArticlesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/test_articles").to route_to("test_articles#index")
    end

    it "routes to #new" do
      expect(get: "/test_articles/new").to route_to("test_articles#new")
    end

    it "routes to #show" do
      expect(get: "/test_articles/1").to route_to("test_articles#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/test_articles/1/edit").to route_to("test_articles#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/test_articles").to route_to("test_articles#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/test_articles/1").to route_to("test_articles#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/test_articles/1").to route_to("test_articles#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/test_articles/1").to route_to("test_articles#destroy", id: "1")
    end
  end
end
