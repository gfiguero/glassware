require "rails_helper"

RSpec.describe Authorization::ProvisionSuppliersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/authorization/provision_suppliers").to route_to("authorization/provision_suppliers#index")
    end

    it "routes to #new" do
      expect(get: "/authorization/provision_suppliers/new").to route_to("authorization/provision_suppliers#new")
    end

    it "routes to #show" do
      expect(get: "/authorization/provision_suppliers/1").to route_to("authorization/provision_suppliers#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/authorization/provision_suppliers/1/edit").to route_to("authorization/provision_suppliers#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/authorization/provision_suppliers").to route_to("authorization/provision_suppliers#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/authorization/provision_suppliers/1").to route_to("authorization/provision_suppliers#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/authorization/provision_suppliers/1").to route_to("authorization/provision_suppliers#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/authorization/provision_suppliers/1").to route_to("authorization/provision_suppliers#destroy", id: "1")
    end
  end
end
