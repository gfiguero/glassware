require 'rails_helper'

RSpec.describe('aim/core/users/new', type: :view) do
  before(:each) do
    assign(:aim / core_user, Aim::Core::User.new(
                               serial_number: 1.5,
                               name: 'MyString',
                               email: 'MyString',
                               encrypted_password: 'MyString',
                               reset_password_token: 'MyString',
                               sign_in_count: 1,
                               current_sign_in_ip: 'MyString',
                               last_sign_in_ip: 'MyString',
                               role: 'MyString',
                               token: 'MyString',
                               map_id: 1,
                               type: '',
                               rut: 'MyString',
                               turn: 'MyString',
                               address: 'MyString',
                               gender: 'MyString',
                               last_names: 'MyString',
                               imei: 'MyString',
                               username: 'MyString',
                               position: '',
                               zone_id: 1,
                               state: 'MyString',
                               phone_number: 'MyString',
                               external_id: 'MyString',
                               failed_attempts: 1,
                               unlock_token: 'MyString',
                               confirmation_token: 'MyString',
                               unconfirmed_email: 'MyString',
                               provider: 'MyString',
                               initials: 'MyString',
                               slug: 'MyString',
                               current_loggable_type: 1,
                               deactivate: false,
                               duration_range_id: 1,
                               temporary_password: false,
                             ))
  end

  it 'renders new aim/core_user form' do
    render

    assert_select 'form[action=?][method=?]', aim_core_users_path, 'post' do
      assert_select 'input[name=?]', 'aim/core_user[serial_number]'

      assert_select 'input[name=?]', 'aim/core_user[name]'

      assert_select 'input[name=?]', 'aim/core_user[email]'

      assert_select 'input[name=?]', 'aim/core_user[encrypted_password]'

      assert_select 'input[name=?]', 'aim/core_user[reset_password_token]'

      assert_select 'input[name=?]', 'aim/core_user[sign_in_count]'

      assert_select 'input[name=?]', 'aim/core_user[current_sign_in_ip]'

      assert_select 'input[name=?]', 'aim/core_user[last_sign_in_ip]'

      assert_select 'input[name=?]', 'aim/core_user[role]'

      assert_select 'input[name=?]', 'aim/core_user[token]'

      assert_select 'input[name=?]', 'aim/core_user[map_id]'

      assert_select 'input[name=?]', 'aim/core_user[type]'

      assert_select 'input[name=?]', 'aim/core_user[rut]'

      assert_select 'input[name=?]', 'aim/core_user[turn]'

      assert_select 'input[name=?]', 'aim/core_user[address]'

      assert_select 'input[name=?]', 'aim/core_user[gender]'

      assert_select 'input[name=?]', 'aim/core_user[last_names]'

      assert_select 'input[name=?]', 'aim/core_user[imei]'

      assert_select 'input[name=?]', 'aim/core_user[username]'

      assert_select 'input[name=?]', 'aim/core_user[position]'

      assert_select 'input[name=?]', 'aim/core_user[zone_id]'

      assert_select 'input[name=?]', 'aim/core_user[state]'

      assert_select 'input[name=?]', 'aim/core_user[phone_number]'

      assert_select 'input[name=?]', 'aim/core_user[external_id]'

      assert_select 'input[name=?]', 'aim/core_user[failed_attempts]'

      assert_select 'input[name=?]', 'aim/core_user[unlock_token]'

      assert_select 'input[name=?]', 'aim/core_user[confirmation_token]'

      assert_select 'input[name=?]', 'aim/core_user[unconfirmed_email]'

      assert_select 'input[name=?]', 'aim/core_user[provider]'

      assert_select 'input[name=?]', 'aim/core_user[initials]'

      assert_select 'input[name=?]', 'aim/core_user[slug]'

      assert_select 'input[name=?]', 'aim/core_user[current_loggable_type]'

      assert_select 'input[name=?]', 'aim/core_user[deactivate]'

      assert_select 'input[name=?]', 'aim/core_user[duration_range_id]'

      assert_select 'input[name=?]', 'aim/core_user[temporary_password]'
    end
  end
end
