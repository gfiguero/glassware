require 'rails_helper'

RSpec.describe "authorization/map_group_requests/show", type: :view do
  before(:each) do
    assign(:authorization_map_group_request, Authorization::MapGroupRequest.create!(
      map_id: 2,
      group_id: 3,
      request_id: 4,
      authorizer_id: 5,
      state: "State",
      message: "MyText",
      slug: "Slug"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Slug/)
  end
end
