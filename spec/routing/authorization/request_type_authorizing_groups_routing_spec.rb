require "rails_helper"

RSpec.describe Authorization::RequestTypeAuthorizingGroupsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/authorization/request_type_authorizing_groups").to route_to("authorization/request_type_authorizing_groups#index")
    end

    it "routes to #new" do
      expect(get: "/authorization/request_type_authorizing_groups/new").to route_to("authorization/request_type_authorizing_groups#new")
    end

    it "routes to #show" do
      expect(get: "/authorization/request_type_authorizing_groups/1").to route_to("authorization/request_type_authorizing_groups#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/authorization/request_type_authorizing_groups/1/edit").to route_to("authorization/request_type_authorizing_groups#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/authorization/request_type_authorizing_groups").to route_to("authorization/request_type_authorizing_groups#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/authorization/request_type_authorizing_groups/1").to route_to("authorization/request_type_authorizing_groups#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/authorization/request_type_authorizing_groups/1").to route_to("authorization/request_type_authorizing_groups#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/authorization/request_type_authorizing_groups/1").to route_to("authorization/request_type_authorizing_groups#destroy", id: "1")
    end
  end
end
