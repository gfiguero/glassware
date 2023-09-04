require "rails_helper"

RSpec.describe Aim::Checklist::ChecklistAnswerOptionsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/aim/checklist/checklist_answer_options").to route_to("aim/checklist/checklist_answer_options#index")
    end

    it "routes to #new" do
      expect(get: "/aim/checklist/checklist_answer_options/new").to route_to("aim/checklist/checklist_answer_options#new")
    end

    it "routes to #show" do
      expect(get: "/aim/checklist/checklist_answer_options/1").to route_to("aim/checklist/checklist_answer_options#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/aim/checklist/checklist_answer_options/1/edit").to route_to("aim/checklist/checklist_answer_options#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/aim/checklist/checklist_answer_options").to route_to("aim/checklist/checklist_answer_options#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/aim/checklist/checklist_answer_options/1").to route_to("aim/checklist/checklist_answer_options#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/aim/checklist/checklist_answer_options/1").to route_to("aim/checklist/checklist_answer_options#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/aim/checklist/checklist_answer_options/1").to route_to("aim/checklist/checklist_answer_options#destroy", id: "1")
    end
  end
end
