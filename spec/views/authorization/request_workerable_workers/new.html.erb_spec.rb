require 'rails_helper'

RSpec.describe "authorization/request_workerable_workers/new", type: :view do
  before(:each) do
    assign(:authorization_request_workerable_worker, Authorization::RequestWorkerableWorker.new(
      request_worker_id: 1
    ))
  end

  it "renders new authorization_request_workerable_worker form" do
    render

    assert_select "form[action=?][method=?]", authorization_request_workerable_workers_path, "post" do

      assert_select "input[name=?]", "authorization_request_workerable_worker[request_worker_id]"
    end
  end
end
