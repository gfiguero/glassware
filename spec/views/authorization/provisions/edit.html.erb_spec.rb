require 'rails_helper'

RSpec.describe "authorization/provisions/edit", type: :view do
  let(:authorization_provision) {
    Authorization::Provision.create!(
      name: "MyString",
      description: "MyText"
    )
  }

  before(:each) do
    assign(:authorization_provision, authorization_provision)
  end

  it "renders the edit authorization_provision form" do
    render

    assert_select "form[action=?][method=?]", authorization_provision_path(authorization_provision), "post" do

      assert_select "input[name=?]", "authorization_provision[name]"

      assert_select "textarea[name=?]", "authorization_provision[description]"
    end
  end
end
