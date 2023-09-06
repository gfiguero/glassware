require 'rails_helper'

RSpec.describe "authorization/request_vehicles/new", type: :view do
  before(:each) do
    assign(:authorization_request_vehicle, Authorization::RequestVehicle.new(
      request_id: 1,
      vehicle_id: 1
    ))
  end

  it "renders new authorization_request_vehicle form" do
    render

    assert_select "form[action=?][method=?]", authorization_request_vehicles_path, "post" do

      assert_select "input[name=?]", "authorization_request_vehicle[request_id]"

      assert_select "input[name=?]", "authorization_request_vehicle[vehicle_id]"
    end
  end
end
