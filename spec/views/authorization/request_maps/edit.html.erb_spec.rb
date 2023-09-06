require 'rails_helper'

RSpec.describe "authorization/request_maps/edit", type: :view do
  let(:authorization_request_map) {
    Authorization::RequestMap.create!(
      map_id: 1,
      request_id: 1
    )
  }

  before(:each) do
    assign(:authorization_request_map, authorization_request_map)
  end

  it "renders the edit authorization_request_map form" do
    render

    assert_select "form[action=?][method=?]", authorization_request_map_path(authorization_request_map), "post" do

      assert_select "input[name=?]", "authorization_request_map[map_id]"

      assert_select "input[name=?]", "authorization_request_map[request_id]"
    end
  end
end
