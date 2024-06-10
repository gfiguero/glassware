require 'rails_helper'

RSpec.describe "test_articles/index", type: :view do
  before(:each) do
    assign(:test_articles, [
      TestArticle.create!(
        name: "Name",
        content: "MyText",
        option: false,
        password: ""
      ),
      TestArticle.create!(
        name: "Name",
        content: "MyText",
        option: false,
        password: ""
      )
    ])
  end

  it "renders a list of test_articles" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("".to_s), count: 2
  end
end
