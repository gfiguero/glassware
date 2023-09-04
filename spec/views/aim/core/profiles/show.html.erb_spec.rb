require 'rails_helper'

RSpec.describe "aim/core/profiles/show", type: :view do
  before(:each) do
    assign(:aim/core_profile, Aim::Core::Profile.create!(
      name: "Name",
      description: "MyText",
      usage: "Usage",
      initial_role_ids: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Usage/)
    expect(rendered).to match(/MyText/)
  end
end
