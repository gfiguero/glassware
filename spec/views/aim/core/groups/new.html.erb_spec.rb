require 'rails_helper'

RSpec.describe('aim/core/groups/new', type: :view) do
  before(:each) do
    assign(:aim / core_group, Aim::Core::Group.new(
                                name: 'MyString',
                                kind: 'MyString',
                              ))
  end

  it 'renders new aim/core_group form' do
    render

    assert_select 'form[action=?][method=?]', aim_core_groups_path, 'post' do
      assert_select 'input[name=?]', 'aim/core_group[name]'

      assert_select 'input[name=?]', 'aim/core_group[kind]'
    end
  end
end
