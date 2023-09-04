require 'rails_helper'

RSpec.describe "aim/core/profiles_roles/new", type: :view do
  before(:each) do
    assign(:aim/core_profiles_role, Aim::Core::ProfilesRole.new(
      profile: nil
    ))
  end

  it "renders new aim/core_profiles_role form" do
    render

    assert_select "form[action=?][method=?]", aim_core_profiles_roles_path, "post" do

      assert_select "input[name=?]", "aim/core_profiles_role[profile_id]"
    end
  end
end
