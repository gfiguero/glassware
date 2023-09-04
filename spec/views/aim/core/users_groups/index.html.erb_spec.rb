require 'rails_helper'

RSpec.describe "aim/core/users_groups/index", type: :view do
  before(:each) do
    assign(:aim_core_users_groups, [
      Aim::Core::UsersGroup.create!(
        user: nil
      ),
      Aim::Core::UsersGroup.create!(
        user: nil
      )
    ])
  end

  it "renders a list of aim/core/users_groups" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
