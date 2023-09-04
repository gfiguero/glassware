require "rails_helper"

RSpec.describe Aim::Core::GroupsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/aim/core/groups").to route_to("aim/core/groups#index")
    end

    it "routes to #new" do
      expect(get: "/aim/core/groups/new").to route_to("aim/core/groups#new")
    end

    it "routes to #show" do
      expect(get: "/aim/core/groups/1").to route_to("aim/core/groups#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/aim/core/groups/1/edit").to route_to("aim/core/groups#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/aim/core/groups").to route_to("aim/core/groups#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/aim/core/groups/1").to route_to("aim/core/groups#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/aim/core/groups/1").to route_to("aim/core/groups#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/aim/core/groups/1").to route_to("aim/core/groups#destroy", id: "1")
    end
  end
end
