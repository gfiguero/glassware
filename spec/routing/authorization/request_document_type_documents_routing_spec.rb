require "rails_helper"

RSpec.describe Authorization::RequestDocumentTypeDocumentsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/authorization/request_document_type_documents").to route_to("authorization/request_document_type_documents#index")
    end

    it "routes to #new" do
      expect(get: "/authorization/request_document_type_documents/new").to route_to("authorization/request_document_type_documents#new")
    end

    it "routes to #show" do
      expect(get: "/authorization/request_document_type_documents/1").to route_to("authorization/request_document_type_documents#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/authorization/request_document_type_documents/1/edit").to route_to("authorization/request_document_type_documents#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/authorization/request_document_type_documents").to route_to("authorization/request_document_type_documents#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/authorization/request_document_type_documents/1").to route_to("authorization/request_document_type_documents#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/authorization/request_document_type_documents/1").to route_to("authorization/request_document_type_documents#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/authorization/request_document_type_documents/1").to route_to("authorization/request_document_type_documents#destroy", id: "1")
    end
  end
end
