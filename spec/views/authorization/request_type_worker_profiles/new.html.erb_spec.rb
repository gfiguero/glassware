require 'rails_helper'

RSpec.describe "authorization/request_type_worker_profiles/new", type: :view do
  before(:each) do
    assign(:authorization_request_type_worker_profile, Authorization::RequestTypeWorkerProfile.new(
      name: "MyString",
      request_type_id: 1,
      validation_type: 1,
      default: false,
      workerable_type: 1
    ))
  end

  it "renders new authorization_request_type_worker_profile form" do
    render

    assert_select "form[action=?][method=?]", authorization_request_type_worker_profiles_path, "post" do

      assert_select "input[name=?]", "authorization_request_type_worker_profile[name]"

      assert_select "input[name=?]", "authorization_request_type_worker_profile[request_type_id]"

      assert_select "input[name=?]", "authorization_request_type_worker_profile[validation_type]"

      assert_select "input[name=?]", "authorization_request_type_worker_profile[default]"

      assert_select "input[name=?]", "authorization_request_type_worker_profile[workerable_type]"
    end
  end
end
