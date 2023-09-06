require 'rails_helper'

RSpec.describe "aim/authorization/group_requests/edit", type: :view do
  let(:aim/authorization_group_request) {
    Aim::Authorization::GroupRequest.create!(
      request_id: 1,
      authorizer_id: 1,
      group_id: 1,
      state: "MyString",
      message: "MyText"
    )
  }

  before(:each) do
    assign(:aim/authorization_group_request, aim/authorization_group_request)
  end

  it "renders the edit aim/authorization_group_request form" do
    render

    assert_select "form[action=?][method=?]", aim/authorization_group_request_path(aim/authorization_group_request), "post" do

      assert_select "input[name=?]", "aim/authorization_group_request[request_id]"

      assert_select "input[name=?]", "aim/authorization_group_request[authorizer_id]"

      assert_select "input[name=?]", "aim/authorization_group_request[group_id]"

      assert_select "input[name=?]", "aim/authorization_group_request[state]"

      assert_select "textarea[name=?]", "aim/authorization_group_request[message]"
    end
  end
end
