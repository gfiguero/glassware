require 'rails_helper'

RSpec.describe "aim/core/groups/index", type: :view do
  before(:each) do
    assign(:aim_core_groups, [
      Aim::Core::Group.create!(
        kind: "Kind"
      ),
      Aim::Core::Group.create!(
        kind: "Kind"
      )
    ])
  end

  it "renders a list of aim/core/groups" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Kind".to_s), count: 2
  end
end
