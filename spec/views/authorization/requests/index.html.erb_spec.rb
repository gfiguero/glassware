require 'rails_helper'

RSpec.describe "authorization/requests/index", type: :view do
  before(:each) do
    assign(:authorization_requests, [
      Authorization::Request.create!(
        requester_id: 2,
        request_type_id: 3,
        interest_point_id: 4,
        interest_point_type: "Interest Point Type",
        state: "State",
        from_time_num: 5,
        until_time_num: 6,
        map_id: 7,
        requester_kind: 8,
        requester_role: "Requester Role",
        requester_comments: "MyText",
        supplier_comments: "MyText",
        comments: "MyText",
        supplier_id: 9,
        requester_identification: "Requester Identification",
        requester_name: "Requester Name",
        requester_phone: "Requester Phone",
        requester_email: "Requester Email",
        for_mall: false,
        payroll_workers_file_name: "Payroll Workers File Name",
        payroll_workers_content_type: "Payroll Workers Content Type",
        payroll_workers_file_size: 10,
        slug: "Slug",
        mixed: 11,
        requester_type: 12
      ),
      Authorization::Request.create!(
        requester_id: 2,
        request_type_id: 3,
        interest_point_id: 4,
        interest_point_type: "Interest Point Type",
        state: "State",
        from_time_num: 5,
        until_time_num: 6,
        map_id: 7,
        requester_kind: 8,
        requester_role: "Requester Role",
        requester_comments: "MyText",
        supplier_comments: "MyText",
        comments: "MyText",
        supplier_id: 9,
        requester_identification: "Requester Identification",
        requester_name: "Requester Name",
        requester_phone: "Requester Phone",
        requester_email: "Requester Email",
        for_mall: false,
        payroll_workers_file_name: "Payroll Workers File Name",
        payroll_workers_content_type: "Payroll Workers Content Type",
        payroll_workers_file_size: 10,
        slug: "Slug",
        mixed: 11,
        requester_type: 12
      )
    ])
  end

  it "renders a list of authorization/requests" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(4.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Interest Point Type".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("State".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(5.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(6.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(7.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(8.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Requester Role".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(9.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Requester Identification".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Requester Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Requester Phone".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Requester Email".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Payroll Workers File Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Payroll Workers Content Type".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(10.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Slug".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(11.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(12.to_s), count: 2
  end
end
