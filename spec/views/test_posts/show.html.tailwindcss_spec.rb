require 'rails_helper'

RSpec.describe "test_posts/show", type: :view do
  before(:each) do
    assign(:test_post, TestPost.create!(
      content: "MyText",
      test_article: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
