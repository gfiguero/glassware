require "rails_helper"

RSpec.describe Aim::Authorization::CurrentWorkerDocumentsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/aim/authorization/current_worker_documents").to route_to("aim/authorization/current_worker_documents#index")
    end

    it "routes to #new" do
      expect(get: "/aim/authorization/current_worker_documents/new").to route_to("aim/authorization/current_worker_documents#new")
    end

    it "routes to #show" do
      expect(get: "/aim/authorization/current_worker_documents/1").to route_to("aim/authorization/current_worker_documents#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/aim/authorization/current_worker_documents/1/edit").to route_to("aim/authorization/current_worker_documents#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/aim/authorization/current_worker_documents").to route_to("aim/authorization/current_worker_documents#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/aim/authorization/current_worker_documents/1").to route_to("aim/authorization/current_worker_documents#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/aim/authorization/current_worker_documents/1").to route_to("aim/authorization/current_worker_documents#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/aim/authorization/current_worker_documents/1").to route_to("aim/authorization/current_worker_documents#destroy", id: "1")
    end
  end
end
