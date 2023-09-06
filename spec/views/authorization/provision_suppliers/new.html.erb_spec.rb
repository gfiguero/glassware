require 'rails_helper'

RSpec.describe "authorization/provision_suppliers/new", type: :view do
  before(:each) do
    assign(:authorization_provision_supplier, Authorization::ProvisionSupplier.new(
      provision_id: 1,
      supplier_id: 1
    ))
  end

  it "renders new authorization_provision_supplier form" do
    render

    assert_select "form[action=?][method=?]", authorization_provision_suppliers_path, "post" do

      assert_select "input[name=?]", "authorization_provision_supplier[provision_id]"

      assert_select "input[name=?]", "authorization_provision_supplier[supplier_id]"
    end
  end
end
