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

RSpec.describe "/authorization/provisions", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # Authorization::Provision. As you add validations to Authorization::Provision, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Authorization::Provision.create! valid_attributes
      get authorization_provisions_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      provision = Authorization::Provision.create! valid_attributes
      get authorization_provision_url(provision)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_authorization_provision_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      provision = Authorization::Provision.create! valid_attributes
      get edit_authorization_provision_url(provision)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Authorization::Provision" do
        expect {
          post authorization_provisions_url, params: { authorization_provision: valid_attributes }
        }.to change(Authorization::Provision, :count).by(1)
      end

      it "redirects to the created authorization_provision" do
        post authorization_provisions_url, params: { authorization_provision: valid_attributes }
        expect(response).to redirect_to(authorization_provision_url(Authorization::Provision.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Authorization::Provision" do
        expect {
          post authorization_provisions_url, params: { authorization_provision: invalid_attributes }
        }.to change(Authorization::Provision, :count).by(0)
      end

    
      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post authorization_provisions_url, params: { authorization_provision: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested authorization_provision" do
        provision = Authorization::Provision.create! valid_attributes
        patch authorization_provision_url(provision), params: { authorization_provision: new_attributes }
        provision.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the authorization_provision" do
        provision = Authorization::Provision.create! valid_attributes
        patch authorization_provision_url(provision), params: { authorization_provision: new_attributes }
        provision.reload
        expect(response).to redirect_to(authorization_provision_url(provision))
      end
    end

    context "with invalid parameters" do
    
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        provision = Authorization::Provision.create! valid_attributes
        patch authorization_provision_url(provision), params: { authorization_provision: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested authorization_provision" do
      provision = Authorization::Provision.create! valid_attributes
      expect {
        delete authorization_provision_url(provision)
      }.to change(Authorization::Provision, :count).by(-1)
    end

    it "redirects to the authorization_provisions list" do
      provision = Authorization::Provision.create! valid_attributes
      delete authorization_provision_url(provision)
      expect(response).to redirect_to(authorization_provisions_url)
    end
  end
end
