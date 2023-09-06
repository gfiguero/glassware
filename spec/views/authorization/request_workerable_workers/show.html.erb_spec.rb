require 'rails_helper'

RSpec.describe "authorization/request_workerable_workers/show", type: :view do
  before(:each) do
    assign(:authorization_request_workerable_worker, Authorization::RequestWorkerableWorker.create!(
      request_worker_id: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
  end
end
