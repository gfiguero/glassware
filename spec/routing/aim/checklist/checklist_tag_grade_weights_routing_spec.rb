require "rails_helper"

RSpec.describe Aim::Checklist::ChecklistTagGradeWeightsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/aim/checklist/checklist_tag_grade_weights").to route_to("aim/checklist/checklist_tag_grade_weights#index")
    end

    it "routes to #new" do
      expect(get: "/aim/checklist/checklist_tag_grade_weights/new").to route_to("aim/checklist/checklist_tag_grade_weights#new")
    end

    it "routes to #show" do
      expect(get: "/aim/checklist/checklist_tag_grade_weights/1").to route_to("aim/checklist/checklist_tag_grade_weights#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/aim/checklist/checklist_tag_grade_weights/1/edit").to route_to("aim/checklist/checklist_tag_grade_weights#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/aim/checklist/checklist_tag_grade_weights").to route_to("aim/checklist/checklist_tag_grade_weights#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/aim/checklist/checklist_tag_grade_weights/1").to route_to("aim/checklist/checklist_tag_grade_weights#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/aim/checklist/checklist_tag_grade_weights/1").to route_to("aim/checklist/checklist_tag_grade_weights#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/aim/checklist/checklist_tag_grade_weights/1").to route_to("aim/checklist/checklist_tag_grade_weights#destroy", id: "1")
    end
  end
end
