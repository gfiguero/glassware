require 'rails_helper'

RSpec.describe "aim/core/roles/index", type: :view do
  before(:each) do
    assign(:aim_core_roles, [
      Aim::Core::Role.create!(
        name: "Name",
        usage: "Usage"
      ),
      Aim::Core::Role.create!(
        name: "Name",
        usage: "Usage"
      )
    ])
  end

  it "renders a list of aim/core/roles" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Usage".to_s), count: 2
  end
end
