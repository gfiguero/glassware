require 'rails_helper'

RSpec.describe "aim/authorization/authorized_maps/new", type: :view do
  before(:each) do
    assign(:aim/authorization_authorized_map, Aim::Authorization::AuthorizedMap.new(
      request_id: 1,
      map_id: 1,
      state: "MyString"
    ))
  end

  it "renders new aim/authorization_authorized_map form" do
    render

    assert_select "form[action=?][method=?]", aim_authorization_authorized_maps_path, "post" do

      assert_select "input[name=?]", "aim/authorization_authorized_map[request_id]"

      assert_select "input[name=?]", "aim/authorization_authorized_map[map_id]"

      assert_select "input[name=?]", "aim/authorization_authorized_map[state]"
    end
  end
end
