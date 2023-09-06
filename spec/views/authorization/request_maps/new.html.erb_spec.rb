require 'rails_helper'

RSpec.describe "authorization/request_maps/new", type: :view do
  before(:each) do
    assign(:authorization_request_map, Authorization::RequestMap.new(
      map_id: 1,
      request_id: 1
    ))
  end

  it "renders new authorization_request_map form" do
    render

    assert_select "form[action=?][method=?]", authorization_request_maps_path, "post" do

      assert_select "input[name=?]", "authorization_request_map[map_id]"

      assert_select "input[name=?]", "authorization_request_map[request_id]"
    end
  end
end
