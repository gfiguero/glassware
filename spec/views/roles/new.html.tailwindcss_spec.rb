require 'rails_helper'

RSpec.describe "roles/new", type: :view do
  before(:each) do
    assign(:role, Role.new(
      name: "MyString",
      usage: "MyString",
      profiles: nil
    ))
  end

  it "renders new role form" do
    render

    assert_select "form[action=?][method=?]", roles_path, "post" do

      assert_select "input[name=?]", "role[name]"

      assert_select "input[name=?]", "role[usage]"

      assert_select "input[name=?]", "role[profiles_id]"
    end
  end
end
