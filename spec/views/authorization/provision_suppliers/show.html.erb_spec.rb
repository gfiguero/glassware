require 'rails_helper'

RSpec.describe "authorization/provision_suppliers/show", type: :view do
  before(:each) do
    assign(:authorization_provision_supplier, Authorization::ProvisionSupplier.create!(
      provision_id: 2,
      supplier_id: 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
