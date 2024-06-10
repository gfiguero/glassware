require 'rails_helper'

RSpec.describe "test_articles/edit", type: :view do
  let(:test_article) {
    TestArticle.create!(
      name: "MyString",
      content: "MyText",
      option: false,
      password: ""
    )
  }

  before(:each) do
    assign(:test_article, test_article)
  end

  it "renders the edit test_article form" do
    render

    assert_select "form[action=?][method=?]", test_article_path(test_article), "post" do

      assert_select "input[name=?]", "test_article[name]"

      assert_select "textarea[name=?]", "test_article[content]"

      assert_select "input[name=?]", "test_article[option]"

      assert_select "input[name=?]", "test_article[password]"
    end
  end
end
