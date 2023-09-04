require "rails_helper"

RSpec.describe Aim::Core::UsersGroupsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/aim/core/users_groups").to route_to("aim/core/users_groups#index")
    end

    it "routes to #new" do
      expect(get: "/aim/core/users_groups/new").to route_to("aim/core/users_groups#new")
    end

    it "routes to #show" do
      expect(get: "/aim/core/users_groups/1").to route_to("aim/core/users_groups#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/aim/core/users_groups/1/edit").to route_to("aim/core/users_groups#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/aim/core/users_groups").to route_to("aim/core/users_groups#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/aim/core/users_groups/1").to route_to("aim/core/users_groups#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/aim/core/users_groups/1").to route_to("aim/core/users_groups#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/aim/core/users_groups/1").to route_to("aim/core/users_groups#destroy", id: "1")
    end
  end
end
