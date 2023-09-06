require 'rails_helper'

RSpec.describe "aim/authorization/authorized_maps/show", type: :view do
  before(:each) do
    assign(:aim/authorization_authorized_map, Aim::Authorization::AuthorizedMap.create!(
      request_id: 2,
      map_id: 3,
      state: "State"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/State/)
  end
end
