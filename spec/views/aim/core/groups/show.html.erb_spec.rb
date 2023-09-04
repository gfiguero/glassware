require 'rails_helper'

RSpec.describe "aim/core/groups/show", type: :view do
  before(:each) do
    assign(:aim/core_group, Aim::Core::Group.create!(
      kind: "Kind"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Kind/)
  end
end
