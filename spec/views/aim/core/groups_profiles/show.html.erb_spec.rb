require 'rails_helper'

RSpec.describe "aim/core/groups_profiles/show", type: :view do
  before(:each) do
    assign(:aim/core_groups_profile, Aim::Core::GroupsProfile.create!(
      profile: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
  end
end
