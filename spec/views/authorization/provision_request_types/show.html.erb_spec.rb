require 'rails_helper'

RSpec.describe "authorization/provision_request_types/show", type: :view do
  before(:each) do
    assign(:authorization_provision_request_type, Authorization::ProvisionRequestType.create!(
      provision_id: 2,
      request_type_id: 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
