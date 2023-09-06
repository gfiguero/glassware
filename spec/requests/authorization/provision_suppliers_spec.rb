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

RSpec.describe "/authorization/provision_suppliers", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # Authorization::ProvisionSupplier. As you add validations to Authorization::ProvisionSupplier, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Authorization::ProvisionSupplier.create! valid_attributes
      get authorization_provision_suppliers_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      provision_supplier = Authorization::ProvisionSupplier.create! valid_attributes
      get authorization_provision_supplier_url(provision_supplier)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_authorization_provision_supplier_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      provision_supplier = Authorization::ProvisionSupplier.create! valid_attributes
      get edit_authorization_provision_supplier_url(provision_supplier)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Authorization::ProvisionSupplier" do
        expect {
          post authorization_provision_suppliers_url, params: { authorization_provision_supplier: valid_attributes }
        }.to change(Authorization::ProvisionSupplier, :count).by(1)
      end

      it "redirects to the created authorization_provision_supplier" do
        post authorization_provision_suppliers_url, params: { authorization_provision_supplier: valid_attributes }
        expect(response).to redirect_to(authorization_provision_supplier_url(Authorization::ProvisionSupplier.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Authorization::ProvisionSupplier" do
        expect {
          post authorization_provision_suppliers_url, params: { authorization_provision_supplier: invalid_attributes }
        }.to change(Authorization::ProvisionSupplier, :count).by(0)
      end

    
      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post authorization_provision_suppliers_url, params: { authorization_provision_supplier: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested authorization_provision_supplier" do
        provision_supplier = Authorization::ProvisionSupplier.create! valid_attributes
        patch authorization_provision_supplier_url(provision_supplier), params: { authorization_provision_supplier: new_attributes }
        provision_supplier.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the authorization_provision_supplier" do
        provision_supplier = Authorization::ProvisionSupplier.create! valid_attributes
        patch authorization_provision_supplier_url(provision_supplier), params: { authorization_provision_supplier: new_attributes }
        provision_supplier.reload
        expect(response).to redirect_to(authorization_provision_supplier_url(provision_supplier))
      end
    end

    context "with invalid parameters" do
    
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        provision_supplier = Authorization::ProvisionSupplier.create! valid_attributes
        patch authorization_provision_supplier_url(provision_supplier), params: { authorization_provision_supplier: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested authorization_provision_supplier" do
      provision_supplier = Authorization::ProvisionSupplier.create! valid_attributes
      expect {
        delete authorization_provision_supplier_url(provision_supplier)
      }.to change(Authorization::ProvisionSupplier, :count).by(-1)
    end

    it "redirects to the authorization_provision_suppliers list" do
      provision_supplier = Authorization::ProvisionSupplier.create! valid_attributes
      delete authorization_provision_supplier_url(provision_supplier)
      expect(response).to redirect_to(authorization_provision_suppliers_url)
    end
  end
end
