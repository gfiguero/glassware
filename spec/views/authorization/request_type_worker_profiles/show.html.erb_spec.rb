require 'rails_helper'

RSpec.describe "authorization/request_type_worker_profiles/show", type: :view do
  before(:each) do
    assign(:authorization_request_type_worker_profile, Authorization::RequestTypeWorkerProfile.create!(
      name: "Name",
      request_type_id: 2,
      validation_type: 3,
      default: false,
      workerable_type: 4
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/4/)
  end
end
