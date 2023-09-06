require 'rails_helper'

RSpec.describe "authorization/request_type_notificable_exceptions/index", type: :view do
  before(:each) do
    assign(:authorization_request_type_notificable_exceptions, [
      Authorization::RequestTypeNotificableException.create!(
        request_type_id: 2,
        user_id: 3
      ),
      Authorization::RequestTypeNotificableException.create!(
        request_type_id: 2,
        user_id: 3
      )
    ])
  end

  it "renders a list of authorization/request_type_notificable_exceptions" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
  end
end
