require 'rails_helper'

RSpec.describe "aim/authorization/authorized_maps/edit", type: :view do
  let(:aim/authorization_authorized_map) {
    Aim::Authorization::AuthorizedMap.create!(
      request_id: 1,
      map_id: 1,
      state: "MyString"
    )
  }

  before(:each) do
    assign(:aim/authorization_authorized_map, aim/authorization_authorized_map)
  end

  it "renders the edit aim/authorization_authorized_map form" do
    render

    assert_select "form[action=?][method=?]", aim/authorization_authorized_map_path(aim/authorization_authorized_map), "post" do

      assert_select "input[name=?]", "aim/authorization_authorized_map[request_id]"

      assert_select "input[name=?]", "aim/authorization_authorized_map[map_id]"

      assert_select "input[name=?]", "aim/authorization_authorized_map[state]"
    end
  end
end
