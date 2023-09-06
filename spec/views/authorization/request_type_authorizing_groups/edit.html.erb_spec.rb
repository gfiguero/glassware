require 'rails_helper'

RSpec.describe "authorization/request_type_authorizing_groups/edit", type: :view do
  let(:authorization_request_type_authorizing_group) {
    Authorization::RequestTypeAuthorizingGroup.create!(
      request_type_id: 1,
      group_id: 1
    )
  }

  before(:each) do
    assign(:authorization_request_type_authorizing_group, authorization_request_type_authorizing_group)
  end

  it "renders the edit authorization_request_type_authorizing_group form" do
    render

    assert_select "form[action=?][method=?]", authorization_request_type_authorizing_group_path(authorization_request_type_authorizing_group), "post" do

      assert_select "input[name=?]", "authorization_request_type_authorizing_group[request_type_id]"

      assert_select "input[name=?]", "authorization_request_type_authorizing_group[group_id]"
    end
  end
end
