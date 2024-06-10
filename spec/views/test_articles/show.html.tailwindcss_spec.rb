require 'rails_helper'

RSpec.describe "test_articles/show", type: :view do
  before(:each) do
    assign(:test_article, TestArticle.create!(
      name: "Name",
      content: "MyText",
      option: false,
      password: ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(//)
  end
end
