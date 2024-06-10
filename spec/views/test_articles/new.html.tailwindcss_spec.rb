require 'rails_helper'

RSpec.describe "test_articles/new", type: :view do
  before(:each) do
    assign(:test_article, TestArticle.new(
      name: "MyString",
      content: "MyText",
      option: false,
      password: ""
    ))
  end

  it "renders new test_article form" do
    render

    assert_select "form[action=?][method=?]", test_articles_path, "post" do

      assert_select "input[name=?]", "test_article[name]"

      assert_select "textarea[name=?]", "test_article[content]"

      assert_select "input[name=?]", "test_article[option]"

      assert_select "input[name=?]", "test_article[password]"
    end
  end
end
