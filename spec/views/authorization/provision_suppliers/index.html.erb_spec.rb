require 'rails_helper'

RSpec.describe "authorization/provision_suppliers/index", type: :view do
  before(:each) do
    assign(:authorization_provision_suppliers, [
      Authorization::ProvisionSupplier.create!(
        provision_id: 2,
        supplier_id: 3
      ),
      Authorization::ProvisionSupplier.create!(
        provision_id: 2,
        supplier_id: 3
      )
    ])
  end

  it "renders a list of authorization/provision_suppliers" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
  end
end
