require 'rails_helper'

RSpec.describe "aim/core/users_groups/new", type: :view do
  before(:each) do
    assign(:aim/core_users_group, Aim::Core::UsersGroup.new(
      group: nil,
      user: nil
    ))
  end

  it "renders new aim/core_users_group form" do
    render

    assert_select "form[action=?][method=?]", aim_core_users_groups_path, "post" do

      assert_select "input[name=?]", "aim/core_users_group[group_id]"

      assert_select "input[name=?]", "aim/core_users_group[user_id]"
    end
  end
end
