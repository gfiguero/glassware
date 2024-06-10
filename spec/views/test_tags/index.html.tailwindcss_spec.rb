require 'rails_helper'

RSpec.describe "test_tags/index", type: :view do
  before(:each) do
    assign(:test_tags, [
      TestTag.create!(
        name: "Name",
        description: "MyText"
      ),
      TestTag.create!(
        name: "Name",
        description: "MyText"
      )
    ])
  end

  it "renders a list of test_tags" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
  end
end
