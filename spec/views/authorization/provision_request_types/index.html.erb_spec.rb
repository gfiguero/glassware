require 'rails_helper'

RSpec.describe "authorization/provision_request_types/index", type: :view do
  before(:each) do
    assign(:authorization_provision_request_types, [
      Authorization::ProvisionRequestType.create!(
        provision_id: 2,
        request_type_id: 3
      ),
      Authorization::ProvisionRequestType.create!(
        provision_id: 2,
        request_type_id: 3
      )
    ])
  end

  it "renders a list of authorization/provision_request_types" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
  end
end
