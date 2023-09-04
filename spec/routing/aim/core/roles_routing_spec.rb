require "rails_helper"

RSpec.describe Aim::Core::RolesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/aim/core/roles").to route_to("aim/core/roles#index")
    end

    it "routes to #new" do
      expect(get: "/aim/core/roles/new").to route_to("aim/core/roles#new")
    end

    it "routes to #show" do
      expect(get: "/aim/core/roles/1").to route_to("aim/core/roles#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/aim/core/roles/1/edit").to route_to("aim/core/roles#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/aim/core/roles").to route_to("aim/core/roles#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/aim/core/roles/1").to route_to("aim/core/roles#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/aim/core/roles/1").to route_to("aim/core/roles#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/aim/core/roles/1").to route_to("aim/core/roles#destroy", id: "1")
    end
  end
end
