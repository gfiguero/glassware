require 'rails_helper'

RSpec.describe "users/new", type: :view do
  before(:each) do
    assign(:user, User.new(
      serial_number: 1.5,
      name: "MyString",
      email: "MyString",
      encrypted_password: "MyString",
      reset_password_token: "MyString",
      sign_in_count: 1,
      current_sign_in_ip: "MyString",
      last_sign_in_ip: "MyString",
      role: "MyString",
      token: "MyString",
      map_id: 1,
      type: "",
      rut: "MyString",
      turn: "MyString",
      address: "MyString",
      gender: "MyString",
      last_names: "MyString",
      imei: "MyString",
      username: "MyString",
      position: "",
      zone_id: 1,
      state: "MyString",
      phone_number: "MyString",
      external_id: "MyString",
      failed_attempts: 1,
      unlock_token: "MyString",
      confirmation_token: "MyString",
      unconfirmed_email: "MyString",
      provider: "MyString",
      initials: "MyString",
      slug: "MyString",
      current_loggable_type: 1,
      deactivate: false,
      duration_range_id: 1,
      temporary_password: false
    ))
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do

      assert_select "input[name=?]", "user[serial_number]"

      assert_select "input[name=?]", "user[name]"

      assert_select "input[name=?]", "user[email]"

      assert_select "input[name=?]", "user[encrypted_password]"

      assert_select "input[name=?]", "user[reset_password_token]"

      assert_select "input[name=?]", "user[sign_in_count]"

      assert_select "input[name=?]", "user[current_sign_in_ip]"

      assert_select "input[name=?]", "user[last_sign_in_ip]"

      assert_select "input[name=?]", "user[role]"

      assert_select "input[name=?]", "user[token]"

      assert_select "input[name=?]", "user[map_id]"

      assert_select "input[name=?]", "user[type]"

      assert_select "input[name=?]", "user[rut]"

      assert_select "input[name=?]", "user[turn]"

      assert_select "input[name=?]", "user[address]"

      assert_select "input[name=?]", "user[gender]"

      assert_select "input[name=?]", "user[last_names]"

      assert_select "input[name=?]", "user[imei]"

      assert_select "input[name=?]", "user[username]"

      assert_select "input[name=?]", "user[position]"

      assert_select "input[name=?]", "user[zone_id]"

      assert_select "input[name=?]", "user[state]"

      assert_select "input[name=?]", "user[phone_number]"

      assert_select "input[name=?]", "user[external_id]"

      assert_select "input[name=?]", "user[failed_attempts]"

      assert_select "input[name=?]", "user[unlock_token]"

      assert_select "input[name=?]", "user[confirmation_token]"

      assert_select "input[name=?]", "user[unconfirmed_email]"

      assert_select "input[name=?]", "user[provider]"

      assert_select "input[name=?]", "user[initials]"

      assert_select "input[name=?]", "user[slug]"

      assert_select "input[name=?]", "user[current_loggable_type]"

      assert_select "input[name=?]", "user[deactivate]"

      assert_select "input[name=?]", "user[duration_range_id]"

      assert_select "input[name=?]", "user[temporary_password]"
    end
  end
end
