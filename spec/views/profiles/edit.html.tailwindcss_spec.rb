require 'rails_helper'

RSpec.describe "profiles/edit", type: :view do
  let(:profile) {
    Profile.create!(
      name: "MyString",
      description: "MyText",
      usage: "MyString",
      initial_role_ids: "MyText",
      roles: nil
    )
  }

  before(:each) do
    assign(:profile, profile)
  end

  it "renders the edit profile form" do
    render

    assert_select "form[action=?][method=?]", profile_path(profile), "post" do

      assert_select "input[name=?]", "profile[name]"

      assert_select "textarea[name=?]", "profile[description]"

      assert_select "input[name=?]", "profile[usage]"

      assert_select "textarea[name=?]", "profile[initial_role_ids]"

      assert_select "input[name=?]", "profile[roles_id]"
    end
  end
end
