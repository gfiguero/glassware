require 'rails_helper'

RSpec.describe "aim/core/groups_profiles/index", type: :view do
  before(:each) do
    assign(:aim_core_groups_profiles, [
      Aim::Core::GroupsProfile.create!(
        profile: nil
      ),
      Aim::Core::GroupsProfile.create!(
        profile: nil
      )
    ])
  end

  it "renders a list of aim/core/groups_profiles" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
