require 'rails_helper'

RSpec.describe "authorization/request_vehicles/edit", type: :view do
  let(:authorization_request_vehicle) {
    Authorization::RequestVehicle.create!(
      request_id: 1,
      vehicle_id: 1
    )
  }

  before(:each) do
    assign(:authorization_request_vehicle, authorization_request_vehicle)
  end

  it "renders the edit authorization_request_vehicle form" do
    render

    assert_select "form[action=?][method=?]", authorization_request_vehicle_path(authorization_request_vehicle), "post" do

      assert_select "input[name=?]", "authorization_request_vehicle[request_id]"

      assert_select "input[name=?]", "authorization_request_vehicle[vehicle_id]"
    end
  end
end
