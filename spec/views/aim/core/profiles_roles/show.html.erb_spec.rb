require 'rails_helper'

RSpec.describe "aim/core/profiles_roles/show", type: :view do
  before(:each) do
    assign(:aim/core_profiles_role, Aim::Core::ProfilesRole.create!(
      profile: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
  end
end
