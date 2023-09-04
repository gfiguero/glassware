require 'rails_helper'

RSpec.describe "aim/core/groups/show", type: :view do
  before(:each) do
    assign(:aim/core_group, Aim::Core::Group.create!(
      name: "Name",
      kind: "Kind"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Kind/)
  end
end
