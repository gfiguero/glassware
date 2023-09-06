require 'rails_helper'

RSpec.describe "authorization/request_workers/new", type: :view do
  before(:each) do
    assign(:authorization_request_worker, Authorization::RequestWorker.new(
      request_id: 1,
      worker_id: 1,
      worker_profile_id: 1,
      owner_type: 1,
      workerable_id: 1,
      workerable_type: "MyString"
    ))
  end

  it "renders new authorization_request_worker form" do
    render

    assert_select "form[action=?][method=?]", authorization_request_workers_path, "post" do

      assert_select "input[name=?]", "authorization_request_worker[request_id]"

      assert_select "input[name=?]", "authorization_request_worker[worker_id]"

      assert_select "input[name=?]", "authorization_request_worker[worker_profile_id]"

      assert_select "input[name=?]", "authorization_request_worker[owner_type]"

      assert_select "input[name=?]", "authorization_request_worker[workerable_id]"

      assert_select "input[name=?]", "authorization_request_worker[workerable_type]"
    end
  end
end
