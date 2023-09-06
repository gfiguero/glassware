require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/authorization/request_type_worker_profile_document_types", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # Authorization::RequestTypeWorkerProfileDocumentType. As you add validations to Authorization::RequestTypeWorkerProfileDocumentType, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Authorization::RequestTypeWorkerProfileDocumentType.create! valid_attributes
      get authorization_request_type_worker_profile_document_types_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      request_type_worker_profile_document_type = Authorization::RequestTypeWorkerProfileDocumentType.create! valid_attributes
      get authorization_request_type_worker_profile_document_type_url(request_type_worker_profile_document_type)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_authorization_request_type_worker_profile_document_type_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      request_type_worker_profile_document_type = Authorization::RequestTypeWorkerProfileDocumentType.create! valid_attributes
      get edit_authorization_request_type_worker_profile_document_type_url(request_type_worker_profile_document_type)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Authorization::RequestTypeWorkerProfileDocumentType" do
        expect {
          post authorization_request_type_worker_profile_document_types_url, params: { authorization_request_type_worker_profile_document_type: valid_attributes }
        }.to change(Authorization::RequestTypeWorkerProfileDocumentType, :count).by(1)
      end

      it "redirects to the created authorization_request_type_worker_profile_document_type" do
        post authorization_request_type_worker_profile_document_types_url, params: { authorization_request_type_worker_profile_document_type: valid_attributes }
        expect(response).to redirect_to(authorization_request_type_worker_profile_document_type_url(Authorization::RequestTypeWorkerProfileDocumentType.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Authorization::RequestTypeWorkerProfileDocumentType" do
        expect {
          post authorization_request_type_worker_profile_document_types_url, params: { authorization_request_type_worker_profile_document_type: invalid_attributes }
        }.to change(Authorization::RequestTypeWorkerProfileDocumentType, :count).by(0)
      end

    
      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post authorization_request_type_worker_profile_document_types_url, params: { authorization_request_type_worker_profile_document_type: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested authorization_request_type_worker_profile_document_type" do
        request_type_worker_profile_document_type = Authorization::RequestTypeWorkerProfileDocumentType.create! valid_attributes
        patch authorization_request_type_worker_profile_document_type_url(request_type_worker_profile_document_type), params: { authorization_request_type_worker_profile_document_type: new_attributes }
        request_type_worker_profile_document_type.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the authorization_request_type_worker_profile_document_type" do
        request_type_worker_profile_document_type = Authorization::RequestTypeWorkerProfileDocumentType.create! valid_attributes
        patch authorization_request_type_worker_profile_document_type_url(request_type_worker_profile_document_type), params: { authorization_request_type_worker_profile_document_type: new_attributes }
        request_type_worker_profile_document_type.reload
        expect(response).to redirect_to(authorization_request_type_worker_profile_document_type_url(request_type_worker_profile_document_type))
      end
    end

    context "with invalid parameters" do
    
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        request_type_worker_profile_document_type = Authorization::RequestTypeWorkerProfileDocumentType.create! valid_attributes
        patch authorization_request_type_worker_profile_document_type_url(request_type_worker_profile_document_type), params: { authorization_request_type_worker_profile_document_type: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested authorization_request_type_worker_profile_document_type" do
      request_type_worker_profile_document_type = Authorization::RequestTypeWorkerProfileDocumentType.create! valid_attributes
      expect {
        delete authorization_request_type_worker_profile_document_type_url(request_type_worker_profile_document_type)
      }.to change(Authorization::RequestTypeWorkerProfileDocumentType, :count).by(-1)
    end

    it "redirects to the authorization_request_type_worker_profile_document_types list" do
      request_type_worker_profile_document_type = Authorization::RequestTypeWorkerProfileDocumentType.create! valid_attributes
      delete authorization_request_type_worker_profile_document_type_url(request_type_worker_profile_document_type)
      expect(response).to redirect_to(authorization_request_type_worker_profile_document_types_url)
    end
  end
end
