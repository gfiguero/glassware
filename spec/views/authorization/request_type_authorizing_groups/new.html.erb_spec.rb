require 'rails_helper'

RSpec.describe "authorization/request_type_authorizing_groups/new", type: :view do
  before(:each) do
    assign(:authorization_request_type_authorizing_group, Authorization::RequestTypeAuthorizingGroup.new(
      request_type_id: 1,
      group_id: 1
    ))
  end

  it "renders new authorization_request_type_authorizing_group form" do
    render

    assert_select "form[action=?][method=?]", authorization_request_type_authorizing_groups_path, "post" do

      assert_select "input[name=?]", "authorization_request_type_authorizing_group[request_type_id]"

      assert_select "input[name=?]", "authorization_request_type_authorizing_group[group_id]"
    end
  end
end
