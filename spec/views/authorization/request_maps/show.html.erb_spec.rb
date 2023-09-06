require 'rails_helper'

RSpec.describe "authorization/request_maps/show", type: :view do
  before(:each) do
    assign(:authorization_request_map, Authorization::RequestMap.create!(
      map_id: 2,
      request_id: 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
