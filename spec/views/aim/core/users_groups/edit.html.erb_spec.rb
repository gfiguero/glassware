require 'rails_helper'

RSpec.describe "aim/core/users_groups/edit", type: :view do
  let(:aim/core_users_group) {
    Aim::Core::UsersGroup.create!(
      user: nil
    )
  }

  before(:each) do
    assign(:aim/core_users_group, aim/core_users_group)
  end

  it "renders the edit aim/core_users_group form" do
    render

    assert_select "form[action=?][method=?]", aim/core_users_group_path(aim/core_users_group), "post" do

      assert_select "input[name=?]", "aim/core_users_group[user_id]"
    end
  end
end
