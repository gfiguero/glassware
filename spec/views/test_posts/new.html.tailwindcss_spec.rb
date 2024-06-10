require 'rails_helper'

RSpec.describe "test_posts/new", type: :view do
  before(:each) do
    assign(:test_post, TestPost.new(
      content: "MyText",
      test_article: nil
    ))
  end

  it "renders new test_post form" do
    render

    assert_select "form[action=?][method=?]", test_posts_path, "post" do

      assert_select "textarea[name=?]", "test_post[content]"

      assert_select "input[name=?]", "test_post[test_article_id]"
    end
  end
end
