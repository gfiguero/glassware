require 'rails_helper'

RSpec.describe "test_tags/show", type: :view do
  before(:each) do
    assign(:test_tag, TestTag.create!(
      name: "Name",
      description: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
  end
end
