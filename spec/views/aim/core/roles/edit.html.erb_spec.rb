require 'rails_helper'

RSpec.describe "aim/core/roles/edit", type: :view do
  let(:aim/core_role) {
    Aim::Core::Role.create!(
      usage: "MyString"
    )
  }

  before(:each) do
    assign(:aim/core_role, aim/core_role)
  end

  it "renders the edit aim/core_role form" do
    render

    assert_select "form[action=?][method=?]", aim/core_role_path(aim/core_role), "post" do

      assert_select "input[name=?]", "aim/core_role[usage]"
    end
  end
end
