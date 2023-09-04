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

RSpec.describe "/aim/core/groups_profiles", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # Aim::Core::GroupsProfile. As you add validations to Aim::Core::GroupsProfile, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Aim::Core::GroupsProfile.create! valid_attributes
      get aim_core_groups_profiles_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      groups_profile = Aim::Core::GroupsProfile.create! valid_attributes
      get aim_core_groups_profile_url(groups_profile)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_aim_core_groups_profile_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      groups_profile = Aim::Core::GroupsProfile.create! valid_attributes
      get edit_aim_core_groups_profile_url(groups_profile)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Aim::Core::GroupsProfile" do
        expect {
          post aim_core_groups_profiles_url, params: { aim_core_groups_profile: valid_attributes }
        }.to change(Aim::Core::GroupsProfile, :count).by(1)
      end

      it "redirects to the created aim_core_groups_profile" do
        post aim_core_groups_profiles_url, params: { aim_core_groups_profile: valid_attributes }
        expect(response).to redirect_to(aim_core_groups_profile_url(Aim::Core::GroupsProfile.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Aim::Core::GroupsProfile" do
        expect {
          post aim_core_groups_profiles_url, params: { aim_core_groups_profile: invalid_attributes }
        }.to change(Aim::Core::GroupsProfile, :count).by(0)
      end

    
      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post aim_core_groups_profiles_url, params: { aim_core_groups_profile: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested aim_core_groups_profile" do
        groups_profile = Aim::Core::GroupsProfile.create! valid_attributes
        patch aim_core_groups_profile_url(groups_profile), params: { aim_core_groups_profile: new_attributes }
        groups_profile.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the aim_core_groups_profile" do
        groups_profile = Aim::Core::GroupsProfile.create! valid_attributes
        patch aim_core_groups_profile_url(groups_profile), params: { aim_core_groups_profile: new_attributes }
        groups_profile.reload
        expect(response).to redirect_to(aim_core_groups_profile_url(groups_profile))
      end
    end

    context "with invalid parameters" do
    
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        groups_profile = Aim::Core::GroupsProfile.create! valid_attributes
        patch aim_core_groups_profile_url(groups_profile), params: { aim_core_groups_profile: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested aim_core_groups_profile" do
      groups_profile = Aim::Core::GroupsProfile.create! valid_attributes
      expect {
        delete aim_core_groups_profile_url(groups_profile)
      }.to change(Aim::Core::GroupsProfile, :count).by(-1)
    end

    it "redirects to the aim_core_groups_profiles list" do
      groups_profile = Aim::Core::GroupsProfile.create! valid_attributes
      delete aim_core_groups_profile_url(groups_profile)
      expect(response).to redirect_to(aim_core_groups_profiles_url)
    end
  end
end
