require 'rails_helper'

RSpec.describe "aim/core/groups_profiles/edit", type: :view do
  let(:aim/core_groups_profile) {
    Aim::Core::GroupsProfile.create!(
      profile: nil
    )
  }

  before(:each) do
    assign(:aim/core_groups_profile, aim/core_groups_profile)
  end

  it "renders the edit aim/core_groups_profile form" do
    render

    assert_select "form[action=?][method=?]", aim/core_groups_profile_path(aim/core_groups_profile), "post" do

      assert_select "input[name=?]", "aim/core_groups_profile[profile_id]"
    end
  end
end
