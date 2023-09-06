require 'rails_helper'

RSpec.describe "authorization/request_type_notificable_groups/index", type: :view do
  before(:each) do
    assign(:authorization_request_type_notificable_groups, [
      Authorization::RequestTypeNotificableGroup.create!(
        request_type_id: 2,
        group_id: 3
      ),
      Authorization::RequestTypeNotificableGroup.create!(
        request_type_id: 2,
        group_id: 3
      )
    ])
  end

  it "renders a list of authorization/request_type_notificable_groups" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
  end
end
