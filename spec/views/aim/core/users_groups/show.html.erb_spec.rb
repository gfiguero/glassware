require 'rails_helper'

RSpec.describe "aim/core/users_groups/show", type: :view do
  before(:each) do
    assign(:aim/core_users_group, Aim::Core::UsersGroup.create!(
      group: nil,
      user: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
