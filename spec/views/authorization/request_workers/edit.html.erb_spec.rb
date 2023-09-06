require 'rails_helper'

RSpec.describe "authorization/request_workers/edit", type: :view do
  let(:authorization_request_worker) {
    Authorization::RequestWorker.create!(
      request_id: 1,
      worker_id: 1,
      worker_profile_id: 1,
      owner_type: 1,
      workerable_id: 1,
      workerable_type: "MyString"
    )
  }

  before(:each) do
    assign(:authorization_request_worker, authorization_request_worker)
  end

  it "renders the edit authorization_request_worker form" do
    render

    assert_select "form[action=?][method=?]", authorization_request_worker_path(authorization_request_worker), "post" do

      assert_select "input[name=?]", "authorization_request_worker[request_id]"

      assert_select "input[name=?]", "authorization_request_worker[worker_id]"

      assert_select "input[name=?]", "authorization_request_worker[worker_profile_id]"

      assert_select "input[name=?]", "authorization_request_worker[owner_type]"

      assert_select "input[name=?]", "authorization_request_worker[workerable_id]"

      assert_select "input[name=?]", "authorization_request_worker[workerable_type]"
    end
  end
end
