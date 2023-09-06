require 'rails_helper'

RSpec.describe "authorization/map_group_requests/index", type: :view do
  before(:each) do
    assign(:authorization_map_group_requests, [
      Authorization::MapGroupRequest.create!(
        map_id: 2,
        group_id: 3,
        request_id: 4,
        authorizer_id: 5,
        state: "State",
        message: "MyText",
        slug: "Slug"
      ),
      Authorization::MapGroupRequest.create!(
        map_id: 2,
        group_id: 3,
        request_id: 4,
        authorizer_id: 5,
        state: "State",
        message: "MyText",
        slug: "Slug"
      )
    ])
  end

  it "renders a list of authorization/map_group_requests" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(4.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(5.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("State".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Slug".to_s), count: 2
  end
end
