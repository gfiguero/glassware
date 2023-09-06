require 'rails_helper'

RSpec.describe "authorization/request_workerable_workers/edit", type: :view do
  let(:authorization_request_workerable_worker) {
    Authorization::RequestWorkerableWorker.create!(
      request_worker_id: 1
    )
  }

  before(:each) do
    assign(:authorization_request_workerable_worker, authorization_request_workerable_worker)
  end

  it "renders the edit authorization_request_workerable_worker form" do
    render

    assert_select "form[action=?][method=?]", authorization_request_workerable_worker_path(authorization_request_workerable_worker), "post" do

      assert_select "input[name=?]", "authorization_request_workerable_worker[request_worker_id]"
    end
  end
end
