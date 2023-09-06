require 'rails_helper'

RSpec.describe "authorization/request_type_worker_profiles/index", type: :view do
  before(:each) do
    assign(:authorization_request_type_worker_profiles, [
      Authorization::RequestTypeWorkerProfile.create!(
        name: "Name",
        request_type_id: 2,
        validation_type: 3,
        default: false,
        workerable_type: 4
      ),
      Authorization::RequestTypeWorkerProfile.create!(
        name: "Name",
        request_type_id: 2,
        validation_type: 3,
        default: false,
        workerable_type: 4
      )
    ])
  end

  it "renders a list of authorization/request_type_worker_profiles" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(4.to_s), count: 2
  end
end
