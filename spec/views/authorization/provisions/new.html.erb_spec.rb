require 'rails_helper'

RSpec.describe "authorization/provisions/new", type: :view do
  before(:each) do
    assign(:authorization_provision, Authorization::Provision.new(
      name: "MyString",
      description: "MyText"
    ))
  end

  it "renders new authorization_provision form" do
    render

    assert_select "form[action=?][method=?]", authorization_provisions_path, "post" do

      assert_select "input[name=?]", "authorization_provision[name]"

      assert_select "textarea[name=?]", "authorization_provision[description]"
    end
  end
end
