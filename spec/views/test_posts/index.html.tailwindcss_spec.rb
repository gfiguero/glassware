require 'rails_helper'

RSpec.describe "test_posts/index", type: :view do
  before(:each) do
    assign(:test_posts, [
      TestPost.create!(
        content: "MyText",
        test_article: nil
      ),
      TestPost.create!(
        content: "MyText",
        test_article: nil
      )
    ])
  end

  it "renders a list of test_posts" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
