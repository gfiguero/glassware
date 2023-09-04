require 'rails_helper'

RSpec.describe "aim/core/groups_profiles/new", type: :view do
  before(:each) do
    assign(:aim/core_groups_profile, Aim::Core::GroupsProfile.new(
      group: nil,
      profile: nil
    ))
  end

  it "renders new aim/core_groups_profile form" do
    render

    assert_select "form[action=?][method=?]", aim_core_groups_profiles_path, "post" do

      assert_select "input[name=?]", "aim/core_groups_profile[group_id]"

      assert_select "input[name=?]", "aim/core_groups_profile[profile_id]"
    end
  end
end
