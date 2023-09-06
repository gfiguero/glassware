require 'rails_helper'

RSpec.describe "authorization/provision_request_types/edit", type: :view do
  let(:authorization_provision_request_type) {
    Authorization::ProvisionRequestType.create!(
      provision_id: 1,
      request_type_id: 1
    )
  }

  before(:each) do
    assign(:authorization_provision_request_type, authorization_provision_request_type)
  end

  it "renders the edit authorization_provision_request_type form" do
    render

    assert_select "form[action=?][method=?]", authorization_provision_request_type_path(authorization_provision_request_type), "post" do

      assert_select "input[name=?]", "authorization_provision_request_type[provision_id]"

      assert_select "input[name=?]", "authorization_provision_request_type[request_type_id]"
    end
  end
end
