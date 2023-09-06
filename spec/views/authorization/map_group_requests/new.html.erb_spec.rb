require 'rails_helper'

RSpec.describe "authorization/map_group_requests/new", type: :view do
  before(:each) do
    assign(:authorization_map_group_request, Authorization::MapGroupRequest.new(
      map_id: 1,
      group_id: 1,
      request_id: 1,
      authorizer_id: 1,
      state: "MyString",
      message: "MyText",
      slug: "MyString"
    ))
  end

  it "renders new authorization_map_group_request form" do
    render

    assert_select "form[action=?][method=?]", authorization_map_group_requests_path, "post" do

      assert_select "input[name=?]", "authorization_map_group_request[map_id]"

      assert_select "input[name=?]", "authorization_map_group_request[group_id]"

      assert_select "input[name=?]", "authorization_map_group_request[request_id]"

      assert_select "input[name=?]", "authorization_map_group_request[authorizer_id]"

      assert_select "input[name=?]", "authorization_map_group_request[state]"

      assert_select "textarea[name=?]", "authorization_map_group_request[message]"

      assert_select "input[name=?]", "authorization_map_group_request[slug]"
    end
  end
end
