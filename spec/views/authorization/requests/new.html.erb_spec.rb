require 'rails_helper'

RSpec.describe "authorization/requests/new", type: :view do
  before(:each) do
    assign(:authorization_request, Authorization::Request.new(
      requester_id: 1,
      request_type_id: 1,
      interest_point_id: 1,
      interest_point_type: "MyString",
      state: "MyString",
      from_time_num: 1,
      until_time_num: 1,
      map_id: 1,
      requester_kind: 1,
      requester_role: "MyString",
      requester_comments: "MyText",
      supplier_comments: "MyText",
      comments: "MyText",
      supplier_id: 1,
      requester_identification: "MyString",
      requester_name: "MyString",
      requester_phone: "MyString",
      requester_email: "MyString",
      for_mall: false,
      payroll_workers_file_name: "MyString",
      payroll_workers_content_type: "MyString",
      payroll_workers_file_size: 1,
      slug: "MyString",
      mixed: 1,
      requester_type: 1
    ))
  end

  it "renders new authorization_request form" do
    render

    assert_select "form[action=?][method=?]", authorization_requests_path, "post" do

      assert_select "input[name=?]", "authorization_request[requester_id]"

      assert_select "input[name=?]", "authorization_request[request_type_id]"

      assert_select "input[name=?]", "authorization_request[interest_point_id]"

      assert_select "input[name=?]", "authorization_request[interest_point_type]"

      assert_select "input[name=?]", "authorization_request[state]"

      assert_select "input[name=?]", "authorization_request[from_time_num]"

      assert_select "input[name=?]", "authorization_request[until_time_num]"

      assert_select "input[name=?]", "authorization_request[map_id]"

      assert_select "input[name=?]", "authorization_request[requester_kind]"

      assert_select "input[name=?]", "authorization_request[requester_role]"

      assert_select "textarea[name=?]", "authorization_request[requester_comments]"

      assert_select "textarea[name=?]", "authorization_request[supplier_comments]"

      assert_select "textarea[name=?]", "authorization_request[comments]"

      assert_select "input[name=?]", "authorization_request[supplier_id]"

      assert_select "input[name=?]", "authorization_request[requester_identification]"

      assert_select "input[name=?]", "authorization_request[requester_name]"

      assert_select "input[name=?]", "authorization_request[requester_phone]"

      assert_select "input[name=?]", "authorization_request[requester_email]"

      assert_select "input[name=?]", "authorization_request[for_mall]"

      assert_select "input[name=?]", "authorization_request[payroll_workers_file_name]"

      assert_select "input[name=?]", "authorization_request[payroll_workers_content_type]"

      assert_select "input[name=?]", "authorization_request[payroll_workers_file_size]"

      assert_select "input[name=?]", "authorization_request[slug]"

      assert_select "input[name=?]", "authorization_request[mixed]"

      assert_select "input[name=?]", "authorization_request[requester_type]"
    end
  end
end
