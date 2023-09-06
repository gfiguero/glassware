require 'rails_helper'

RSpec.describe "aim/authorization/authorized_maps/index", type: :view do
  before(:each) do
    assign(:aim_authorization_authorized_maps, [
      Aim::Authorization::AuthorizedMap.create!(
        request_id: 2,
        map_id: 3,
        state: "State"
      ),
      Aim::Authorization::AuthorizedMap.create!(
        request_id: 2,
        map_id: 3,
        state: "State"
      )
    ])
  end

  it "renders a list of aim/authorization/authorized_maps" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("State".to_s), count: 2
  end
end
