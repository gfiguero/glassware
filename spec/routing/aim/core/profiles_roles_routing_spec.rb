require "rails_helper"

RSpec.describe Aim::Core::ProfilesRolesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/aim/core/profiles_roles").to route_to("aim/core/profiles_roles#index")
    end

    it "routes to #new" do
      expect(get: "/aim/core/profiles_roles/new").to route_to("aim/core/profiles_roles#new")
    end

    it "routes to #show" do
      expect(get: "/aim/core/profiles_roles/1").to route_to("aim/core/profiles_roles#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/aim/core/profiles_roles/1/edit").to route_to("aim/core/profiles_roles#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/aim/core/profiles_roles").to route_to("aim/core/profiles_roles#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/aim/core/profiles_roles/1").to route_to("aim/core/profiles_roles#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/aim/core/profiles_roles/1").to route_to("aim/core/profiles_roles#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/aim/core/profiles_roles/1").to route_to("aim/core/profiles_roles#destroy", id: "1")
    end
  end
end
