require 'rails_helper'

RSpec.describe "aim/core/profiles/edit", type: :view do
  let(:aim/core_profile) {
    Aim::Core::Profile.create!(
      description: "MyText",
      usage: "MyString",
      initial_role_ids: "MyText"
    )
  }

  before(:each) do
    assign(:aim/core_profile, aim/core_profile)
  end

  it "renders the edit aim/core_profile form" do
    render

    assert_select "form[action=?][method=?]", aim/core_profile_path(aim/core_profile), "post" do

      assert_select "textarea[name=?]", "aim/core_profile[description]"

      assert_select "input[name=?]", "aim/core_profile[usage]"

      assert_select "textarea[name=?]", "aim/core_profile[initial_role_ids]"
    end
  end
end
