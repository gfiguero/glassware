require 'rails_helper'

RSpec.describe "authorization/request_type_notificable_exceptions/edit", type: :view do
  let(:authorization_request_type_notificable_exception) {
    Authorization::RequestTypeNotificableException.create!(
      request_type_id: 1,
      user_id: 1
    )
  }

  before(:each) do
    assign(:authorization_request_type_notificable_exception, authorization_request_type_notificable_exception)
  end

  it "renders the edit authorization_request_type_notificable_exception form" do
    render

    assert_select "form[action=?][method=?]", authorization_request_type_notificable_exception_path(authorization_request_type_notificable_exception), "post" do

      assert_select "input[name=?]", "authorization_request_type_notificable_exception[request_type_id]"

      assert_select "input[name=?]", "authorization_request_type_notificable_exception[user_id]"
    end
  end
end
