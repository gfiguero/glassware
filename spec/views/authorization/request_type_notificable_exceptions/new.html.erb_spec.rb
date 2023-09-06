require 'rails_helper'

RSpec.describe "authorization/request_type_notificable_exceptions/new", type: :view do
  before(:each) do
    assign(:authorization_request_type_notificable_exception, Authorization::RequestTypeNotificableException.new(
      request_type_id: 1,
      user_id: 1
    ))
  end

  it "renders new authorization_request_type_notificable_exception form" do
    render

    assert_select "form[action=?][method=?]", authorization_request_type_notificable_exceptions_path, "post" do

      assert_select "input[name=?]", "authorization_request_type_notificable_exception[request_type_id]"

      assert_select "input[name=?]", "authorization_request_type_notificable_exception[user_id]"
    end
  end
end
