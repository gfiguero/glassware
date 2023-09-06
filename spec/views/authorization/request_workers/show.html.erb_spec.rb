require 'rails_helper'

RSpec.describe "authorization/request_workers/show", type: :view do
  before(:each) do
    assign(:authorization_request_worker, Authorization::RequestWorker.create!(
      request_id: 2,
      worker_id: 3,
      worker_profile_id: 4,
      owner_type: 5,
      workerable_id: 6,
      workerable_type: "Workerable Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/Workerable Type/)
  end
end
