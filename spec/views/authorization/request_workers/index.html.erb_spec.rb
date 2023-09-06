require 'rails_helper'

RSpec.describe "authorization/request_workers/index", type: :view do
  before(:each) do
    assign(:authorization_request_workers, [
      Authorization::RequestWorker.create!(
        request_id: 2,
        worker_id: 3,
        worker_profile_id: 4,
        owner_type: 5,
        workerable_id: 6,
        workerable_type: "Workerable Type"
      ),
      Authorization::RequestWorker.create!(
        request_id: 2,
        worker_id: 3,
        worker_profile_id: 4,
        owner_type: 5,
        workerable_id: 6,
        workerable_type: "Workerable Type"
      )
    ])
  end

  it "renders a list of authorization/request_workers" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(4.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(5.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(6.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Workerable Type".to_s), count: 2
  end
end
