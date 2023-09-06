require "rails_helper"

RSpec.describe Authorization::ScannedFramesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/authorization/scanned_frames").to route_to("authorization/scanned_frames#index")
    end

    it "routes to #new" do
      expect(get: "/authorization/scanned_frames/new").to route_to("authorization/scanned_frames#new")
    end

    it "routes to #show" do
      expect(get: "/authorization/scanned_frames/1").to route_to("authorization/scanned_frames#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/authorization/scanned_frames/1/edit").to route_to("authorization/scanned_frames#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/authorization/scanned_frames").to route_to("authorization/scanned_frames#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/authorization/scanned_frames/1").to route_to("authorization/scanned_frames#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/authorization/scanned_frames/1").to route_to("authorization/scanned_frames#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/authorization/scanned_frames/1").to route_to("authorization/scanned_frames#destroy", id: "1")
    end
  end
end
