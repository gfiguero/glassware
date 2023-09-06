require 'rails_helper'

RSpec.describe "authorization/provisions/index", type: :view do
  before(:each) do
    assign(:authorization_provisions, [
      Authorization::Provision.create!(
        name: "Name",
        description: "MyText"
      ),
      Authorization::Provision.create!(
        name: "Name",
        description: "MyText"
      )
    ])
  end

  it "renders a list of authorization/provisions" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
  end
end
