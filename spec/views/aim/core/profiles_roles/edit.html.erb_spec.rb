require 'rails_helper'

RSpec.describe "aim/core/profiles_roles/edit", type: :view do
  let(:aim/core_profiles_role) {
    Aim::Core::ProfilesRole.create!(
      role: nil,
      profile: nil
    )
  }

  before(:each) do
    assign(:aim/core_profiles_role, aim/core_profiles_role)
  end

  it "renders the edit aim/core_profiles_role form" do
    render

    assert_select "form[action=?][method=?]", aim/core_profiles_role_path(aim/core_profiles_role), "post" do

      assert_select "input[name=?]", "aim/core_profiles_role[role_id]"

      assert_select "input[name=?]", "aim/core_profiles_role[profile_id]"
    end
  end
end
