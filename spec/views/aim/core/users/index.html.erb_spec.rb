require 'rails_helper'

RSpec.describe "aim/core/users/index", type: :view do
  before(:each) do
    assign(:aim_core_users, [
      Aim::Core::User.create!(
        serial_number: 2.5,
        name: "Name",
        email: "Email",
        encrypted_password: "Encrypted Password",
        reset_password_token: "Reset Password Token",
        sign_in_count: 3,
        current_sign_in_ip: "Current Sign In Ip",
        last_sign_in_ip: "Last Sign In Ip",
        role: "Role",
        token: "Token",
        map_id: 4,
        type: "Type",
        rut: "Rut",
        turn: "Turn",
        address: "Address",
        gender: "Gender",
        last_names: "Last Names",
        imei: "Imei",
        username: "Username",
        position: "",
        zone_id: 5,
        state: "State",
        phone_number: "Phone Number",
        external_id: "External",
        failed_attempts: 6,
        unlock_token: "Unlock Token",
        confirmation_token: "Confirmation Token",
        unconfirmed_email: "Unconfirmed Email",
        provider: "Provider",
        initials: "Initials",
        slug: "Slug",
        current_loggable_type: 7,
        deactivate: false,
        duration_range_id: 8,
        temporary_password: false
      ),
      Aim::Core::User.create!(
        serial_number: 2.5,
        name: "Name",
        email: "Email",
        encrypted_password: "Encrypted Password",
        reset_password_token: "Reset Password Token",
        sign_in_count: 3,
        current_sign_in_ip: "Current Sign In Ip",
        last_sign_in_ip: "Last Sign In Ip",
        role: "Role",
        token: "Token",
        map_id: 4,
        type: "Type",
        rut: "Rut",
        turn: "Turn",
        address: "Address",
        gender: "Gender",
        last_names: "Last Names",
        imei: "Imei",
        username: "Username",
        position: "",
        zone_id: 5,
        state: "State",
        phone_number: "Phone Number",
        external_id: "External",
        failed_attempts: 6,
        unlock_token: "Unlock Token",
        confirmation_token: "Confirmation Token",
        unconfirmed_email: "Unconfirmed Email",
        provider: "Provider",
        initials: "Initials",
        slug: "Slug",
        current_loggable_type: 7,
        deactivate: false,
        duration_range_id: 8,
        temporary_password: false
      )
    ])
  end

  it "renders a list of aim/core/users" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(2.5.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Email".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Encrypted Password".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Reset Password Token".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Current Sign In Ip".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Last Sign In Ip".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Role".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Token".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(4.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Type".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Rut".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Turn".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Address".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Gender".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Last Names".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Imei".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Username".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(5.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("State".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Phone Number".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("External".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(6.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Unlock Token".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Confirmation Token".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Unconfirmed Email".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Provider".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Initials".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Slug".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(7.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(8.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
  end
end
