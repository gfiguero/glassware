require 'rails_helper'

RSpec.describe('aim/core/users/show', type: :view) do
  before(:each) do
    assign(:aim / core_user, Aim::Core::User.create!(
                               serial_number: 2.5,
                               name: 'Name',
                               email: 'Email',
                               encrypted_password: 'Encrypted Password',
                               reset_password_token: 'Reset Password Token',
                               sign_in_count: 3,
                               current_sign_in_ip: 'Current Sign In Ip',
                               last_sign_in_ip: 'Last Sign In Ip',
                               role: 'Role',
                               token: 'Token',
                               map_id: 4,
                               type: 'Type',
                               rut: 'Rut',
                               turn: 'Turn',
                               address: 'Address',
                               gender: 'Gender',
                               last_names: 'Last Names',
                               imei: 'Imei',
                               username: 'Username',
                               position: '',
                               zone_id: 5,
                               state: 'State',
                               phone_number: 'Phone Number',
                               external_id: 'External',
                               failed_attempts: 6,
                               unlock_token: 'Unlock Token',
                               confirmation_token: 'Confirmation Token',
                               unconfirmed_email: 'Unconfirmed Email',
                               provider: 'Provider',
                               initials: 'Initials',
                               slug: 'Slug',
                               current_loggable_type: 7,
                               deactivate: false,
                               duration_range_id: 8,
                               temporary_password: false,
                             ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to(match(/2.5/))
    expect(rendered).to(match(/Name/))
    expect(rendered).to(match(/Email/))
    expect(rendered).to(match(/Encrypted Password/))
    expect(rendered).to(match(/Reset Password Token/))
    expect(rendered).to(match(/3/))
    expect(rendered).to(match(/Current Sign In Ip/))
    expect(rendered).to(match(/Last Sign In Ip/))
    expect(rendered).to(match(/Role/))
    expect(rendered).to(match(/Token/))
    expect(rendered).to(match(/4/))
    expect(rendered).to(match(/Type/))
    expect(rendered).to(match(/Rut/))
    expect(rendered).to(match(/Turn/))
    expect(rendered).to(match(/Address/))
    expect(rendered).to(match(/Gender/))
    expect(rendered).to(match(/Last Names/))
    expect(rendered).to(match(/Imei/))
    expect(rendered).to(match(/Username/))
    expect(rendered).to(match(//))
    expect(rendered).to(match(/5/))
    expect(rendered).to(match(/State/))
    expect(rendered).to(match(/Phone Number/))
    expect(rendered).to(match(/External/))
    expect(rendered).to(match(/6/))
    expect(rendered).to(match(/Unlock Token/))
    expect(rendered).to(match(/Confirmation Token/))
    expect(rendered).to(match(/Unconfirmed Email/))
    expect(rendered).to(match(/Provider/))
    expect(rendered).to(match(/Initials/))
    expect(rendered).to(match(/Slug/))
    expect(rendered).to(match(/7/))
    expect(rendered).to(match(/false/))
    expect(rendered).to(match(/8/))
    expect(rendered).to(match(/false/))
  end
end
