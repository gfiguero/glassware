require 'rails_helper'

RSpec.describe('aim/core/profiles/index', type: :view) do
  before(:each) do
    assign(:aim_core_profiles, [
             Aim::Core::Profile.create!(
               name: 'Name',
               description: 'MyText',
               usage: 'Usage',
               initial_role_ids: 'MyText',
             ),
             Aim::Core::Profile.create!(
               name: 'Name',
               description: 'MyText',
               usage: 'Usage',
               initial_role_ids: 'MyText',
             ),
           ])
  end

  it 'renders a list of aim/core/profiles' do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new('Name'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('MyText'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('Usage'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('MyText'.to_s), count: 2
  end
end
