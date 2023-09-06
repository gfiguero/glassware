require 'rails_helper'

RSpec.describe "authorization/request_workerable_workers/index", type: :view do
  before(:each) do
    assign(:authorization_request_workerable_workers, [
      Authorization::RequestWorkerableWorker.create!(
        request_worker_id: 2
      ),
      Authorization::RequestWorkerableWorker.create!(
        request_worker_id: 2
      )
    ])
  end

  it "renders a list of authorization/request_workerable_workers" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
  end
end
