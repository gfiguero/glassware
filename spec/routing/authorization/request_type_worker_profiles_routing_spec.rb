require "rails_helper"

RSpec.describe Authorization::RequestTypeWorkerProfilesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/authorization/request_type_worker_profiles").to route_to("authorization/request_type_worker_profiles#index")
    end

    it "routes to #new" do
      expect(get: "/authorization/request_type_worker_profiles/new").to route_to("authorization/request_type_worker_profiles#new")
    end

    it "routes to #show" do
      expect(get: "/authorization/request_type_worker_profiles/1").to route_to("authorization/request_type_worker_profiles#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/authorization/request_type_worker_profiles/1/edit").to route_to("authorization/request_type_worker_profiles#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/authorization/request_type_worker_profiles").to route_to("authorization/request_type_worker_profiles#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/authorization/request_type_worker_profiles/1").to route_to("authorization/request_type_worker_profiles#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/authorization/request_type_worker_profiles/1").to route_to("authorization/request_type_worker_profiles#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/authorization/request_type_worker_profiles/1").to route_to("authorization/request_type_worker_profiles#destroy", id: "1")
    end
  end
end
