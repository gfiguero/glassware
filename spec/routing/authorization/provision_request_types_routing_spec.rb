require "rails_helper"

RSpec.describe Authorization::ProvisionRequestTypesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/authorization/provision_request_types").to route_to("authorization/provision_request_types#index")
    end

    it "routes to #new" do
      expect(get: "/authorization/provision_request_types/new").to route_to("authorization/provision_request_types#new")
    end

    it "routes to #show" do
      expect(get: "/authorization/provision_request_types/1").to route_to("authorization/provision_request_types#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/authorization/provision_request_types/1/edit").to route_to("authorization/provision_request_types#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/authorization/provision_request_types").to route_to("authorization/provision_request_types#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/authorization/provision_request_types/1").to route_to("authorization/provision_request_types#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/authorization/provision_request_types/1").to route_to("authorization/provision_request_types#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/authorization/provision_request_types/1").to route_to("authorization/provision_request_types#destroy", id: "1")
    end
  end
end
