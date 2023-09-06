require 'rails_helper'

RSpec.describe "aim/authorization/group_requests/show", type: :view do
  before(:each) do
    assign(:aim/authorization_group_request, Aim::Authorization::GroupRequest.create!(
      request_id: 2,
      authorizer_id: 3,
      group_id: 4,
      state: "State",
      message: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/MyText/)
  end
end
