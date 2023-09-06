require 'rails_helper'

RSpec.describe "authorization/provision_request_types/new", type: :view do
  before(:each) do
    assign(:authorization_provision_request_type, Authorization::ProvisionRequestType.new(
      provision_id: 1,
      request_type_id: 1
    ))
  end

  it "renders new authorization_provision_request_type form" do
    render

    assert_select "form[action=?][method=?]", authorization_provision_request_types_path, "post" do

      assert_select "input[name=?]", "authorization_provision_request_type[provision_id]"

      assert_select "input[name=?]", "authorization_provision_request_type[request_type_id]"
    end
  end
end
