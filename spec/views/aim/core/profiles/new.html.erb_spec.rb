require 'rails_helper'

RSpec.describe('aim/core/profiles/new', type: :view) do
  before(:each) do
    assign(:aim / core_profile, Aim::Core::Profile.new(
                                  name: 'MyString',
                                  description: 'MyText',
                                  usage: 'MyString',
                                  initial_role_ids: 'MyText',
                                ))
  end

  it 'renders new aim/core_profile form' do
    render

    assert_select 'form[action=?][method=?]', aim_core_profiles_path, 'post' do
      assert_select 'input[name=?]', 'aim/core_profile[name]'

      assert_select 'textarea[name=?]', 'aim/core_profile[description]'

      assert_select 'input[name=?]', 'aim/core_profile[usage]'

      assert_select 'textarea[name=?]', 'aim/core_profile[initial_role_ids]'
    end
  end
end
