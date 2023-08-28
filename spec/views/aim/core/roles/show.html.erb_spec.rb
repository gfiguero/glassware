require 'rails_helper'

RSpec.describe('aim/core/roles/show', type: :view) do
  before(:each) do
    assign(:aim / core_role, Aim::Core::Role.create!(
                               name: 'Name',
                               usage: 'Usage',
                             ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to(match(/Name/))
    expect(rendered).to(match(/Usage/))
  end
end
