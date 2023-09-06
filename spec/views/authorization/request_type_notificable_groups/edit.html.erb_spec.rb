require 'rails_helper'

RSpec.describe "authorization/request_type_notificable_groups/edit", type: :view do
  let(:authorization_request_type_notificable_group) {
    Authorization::RequestTypeNotificableGroup.create!(
      request_type_id: 1,
      group_id: 1
    )
  }

  before(:each) do
    assign(:authorization_request_type_notificable_group, authorization_request_type_notificable_group)
  end

  it "renders the edit authorization_request_type_notificable_group form" do
    render

    assert_select "form[action=?][method=?]", authorization_request_type_notificable_group_path(authorization_request_type_notificable_group), "post" do

      assert_select "input[name=?]", "authorization_request_type_notificable_group[request_type_id]"

      assert_select "input[name=?]", "authorization_request_type_notificable_group[group_id]"
    end
  end
end
