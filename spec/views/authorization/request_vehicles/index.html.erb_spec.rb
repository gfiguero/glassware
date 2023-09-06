require 'rails_helper'

RSpec.describe "authorization/request_vehicles/index", type: :view do
  before(:each) do
    assign(:authorization_request_vehicles, [
      Authorization::RequestVehicle.create!(
        request_id: 2,
        vehicle_id: 3
      ),
      Authorization::RequestVehicle.create!(
        request_id: 2,
        vehicle_id: 3
      )
    ])
  end

  it "renders a list of authorization/request_vehicles" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
  end
end
