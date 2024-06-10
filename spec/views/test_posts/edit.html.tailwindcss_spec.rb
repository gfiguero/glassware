require 'rails_helper'

RSpec.describe "test_posts/edit", type: :view do
  let(:test_post) {
    TestPost.create!(
      content: "MyText",
      test_article: nil
    )
  }

  before(:each) do
    assign(:test_post, test_post)
  end

  it "renders the edit test_post form" do
    render

    assert_select "form[action=?][method=?]", test_post_path(test_post), "post" do

      assert_select "textarea[name=?]", "test_post[content]"

      assert_select "input[name=?]", "test_post[test_article_id]"
    end
  end
end
