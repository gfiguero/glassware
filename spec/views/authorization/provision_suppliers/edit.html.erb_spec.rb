require 'rails_helper'

RSpec.describe "authorization/provision_suppliers/edit", type: :view do
  let(:authorization_provision_supplier) {
    Authorization::ProvisionSupplier.create!(
      provision_id: 1,
      supplier_id: 1
    )
  }

  before(:each) do
    assign(:authorization_provision_supplier, authorization_provision_supplier)
  end

  it "renders the edit authorization_provision_supplier form" do
    render

    assert_select "form[action=?][method=?]", authorization_provision_supplier_path(authorization_provision_supplier), "post" do

      assert_select "input[name=?]", "authorization_provision_supplier[provision_id]"

      assert_select "input[name=?]", "authorization_provision_supplier[supplier_id]"
    end
  end
end
