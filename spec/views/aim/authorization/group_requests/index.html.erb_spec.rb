require 'rails_helper'

RSpec.describe "aim/authorization/group_requests/index", type: :view do
  before(:each) do
    assign(:aim_authorization_group_requests, [
      Aim::Authorization::GroupRequest.create!(
        request_id: 2,
        authorizer_id: 3,
        group_id: 4,
        state: "State",
        message: "MyText"
      ),
      Aim::Authorization::GroupRequest.create!(
        request_id: 2,
        authorizer_id: 3,
        group_id: 4,
        state: "State",
        message: "MyText"
      )
    ])
  end

  it "renders a list of aim/authorization/group_requests" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(4.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("State".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
  end
end
