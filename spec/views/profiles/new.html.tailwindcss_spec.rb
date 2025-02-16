require 'rails_helper'

RSpec.describe "profiles/new", type: :view do
  before(:each) do
    assign(:profile, Profile.new(
      name: "MyString",
      description: "MyText",
      usage: "MyString",
      initial_role_ids: "MyText",
      roles: nil,
      groups: nil
    ))
  end

  it "renders new profile form" do
    render

    assert_select "form[action=?][method=?]", profiles_path, "post" do

      assert_select "input[name=?]", "profile[name]"

      assert_select "textarea[name=?]", "profile[description]"

      assert_select "input[name=?]", "profile[usage]"

      assert_select "textarea[name=?]", "profile[initial_role_ids]"

      assert_select "input[name=?]", "profile[roles_id]"

      assert_select "input[name=?]", "profile[groups_id]"
    end
  end
end
