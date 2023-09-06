require 'rails_helper'

RSpec.describe "aim/authorization/group_requests/new", type: :view do
  before(:each) do
    assign(:aim/authorization_group_request, Aim::Authorization::GroupRequest.new(
      request_id: 1,
      authorizer_id: 1,
      group_id: 1,
      state: "MyString",
      message: "MyText"
    ))
  end

  it "renders new aim/authorization_group_request form" do
    render

    assert_select "form[action=?][method=?]", aim_authorization_group_requests_path, "post" do

      assert_select "input[name=?]", "aim/authorization_group_request[request_id]"

      assert_select "input[name=?]", "aim/authorization_group_request[authorizer_id]"

      assert_select "input[name=?]", "aim/authorization_group_request[group_id]"

      assert_select "input[name=?]", "aim/authorization_group_request[state]"

      assert_select "textarea[name=?]", "aim/authorization_group_request[message]"
    end
  end
end
