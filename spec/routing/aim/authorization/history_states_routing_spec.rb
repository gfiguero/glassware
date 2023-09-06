require "rails_helper"

RSpec.describe Aim::Authorization::HistoryStatesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/aim/authorization/history_states").to route_to("aim/authorization/history_states#index")
    end

    it "routes to #new" do
      expect(get: "/aim/authorization/history_states/new").to route_to("aim/authorization/history_states#new")
    end

    it "routes to #show" do
      expect(get: "/aim/authorization/history_states/1").to route_to("aim/authorization/history_states#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/aim/authorization/history_states/1/edit").to route_to("aim/authorization/history_states#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/aim/authorization/history_states").to route_to("aim/authorization/history_states#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/aim/authorization/history_states/1").to route_to("aim/authorization/history_states#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/aim/authorization/history_states/1").to route_to("aim/authorization/history_states#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/aim/authorization/history_states/1").to route_to("aim/authorization/history_states#destroy", id: "1")
    end
  end
end
