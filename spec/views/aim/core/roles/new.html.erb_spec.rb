require 'rails_helper'

RSpec.describe "aim/core/roles/new", type: :view do
  before(:each) do
    assign(:aim/core_role, Aim::Core::Role.new(
      name: "MyString",
      usage: "MyString"
    ))
  end

  it "renders new aim/core_role form" do
    render

    assert_select "form[action=?][method=?]", aim_core_roles_path, "post" do

      assert_select "input[name=?]", "aim/core_role[name]"

      assert_select "input[name=?]", "aim/core_role[usage]"
    end
  end
end
