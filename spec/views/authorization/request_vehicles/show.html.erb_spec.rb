require 'rails_helper'

RSpec.describe "authorization/request_vehicles/show", type: :view do
  before(:each) do
    assign(:authorization_request_vehicle, Authorization::RequestVehicle.create!(
      request_id: 2,
      vehicle_id: 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
