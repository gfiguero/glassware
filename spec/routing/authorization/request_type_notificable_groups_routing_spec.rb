require "rails_helper"

RSpec.describe Authorization::RequestTypeNotificableGroupsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/authorization/request_type_notificable_groups").to route_to("authorization/request_type_notificable_groups#index")
    end

    it "routes to #new" do
      expect(get: "/authorization/request_type_notificable_groups/new").to route_to("authorization/request_type_notificable_groups#new")
    end

    it "routes to #show" do
      expect(get: "/authorization/request_type_notificable_groups/1").to route_to("authorization/request_type_notificable_groups#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/authorization/request_type_notificable_groups/1/edit").to route_to("authorization/request_type_notificable_groups#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/authorization/request_type_notificable_groups").to route_to("authorization/request_type_notificable_groups#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/authorization/request_type_notificable_groups/1").to route_to("authorization/request_type_notificable_groups#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/authorization/request_type_notificable_groups/1").to route_to("authorization/request_type_notificable_groups#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/authorization/request_type_notificable_groups/1").to route_to("authorization/request_type_notificable_groups#destroy", id: "1")
    end
  end
end
