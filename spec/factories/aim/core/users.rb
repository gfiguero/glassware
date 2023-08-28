FactoryBot.define do
  factory :aim_core_user, class: 'Aim::Core::User' do
    serial_number { 1.5 }
    name { 'MyString' }
    email { 'MyString' }
    encrypted_password { 'MyString' }
    reset_password_token { 'MyString' }
    reset_password_sent_at { '2023-08-28 19:19:21' }
    remember_created_at { '2023-08-28 19:19:21' }
    sign_in_count { 1 }
    current_sign_in_at { '2023-08-28 19:19:21' }
    last_sign_in_at { '2023-08-28 19:19:21' }
    current_sign_in_ip { 'MyString' }
    last_sign_in_ip { 'MyString' }
    role { 'MyString' }
    created_at { '2023-08-28 19:19:21' }
    updated_at { '2023-08-28 19:19:21' }
    token { 'MyString' }
    deleted_at { '2023-08-28 19:19:21' }
    map_id { 1 }
    type { '' }
    rut { 'MyString' }
    turn { 'MyString' }
    address { 'MyString' }
    gender { 'MyString' }
    last_names { 'MyString' }
    imei { 'MyString' }
    username { 'MyString' }
    position { '' }
    zone_id { 1 }
    state { 'MyString' }
    state_updated_at { '2023-08-28 19:19:21' }
    phone_number { 'MyString' }
    external_id { 'MyString' }
    password_changed_at { '2023-08-28 19:19:21' }
    last_activity_at { '2023-08-28 19:19:21' }
    expired_at { '2023-08-28 19:19:21' }
    locked_at { '2023-08-28 19:19:21' }
    failed_attempts { 1 }
    unlock_token { 'MyString' }
    confirmation_token { 'MyString' }
    confirmed_at { '2023-08-28 19:19:21' }
    confirmation_sent_at { '2023-08-28 19:19:21' }
    unconfirmed_email { 'MyString' }
    provider { 'MyString' }
    initials { 'MyString' }
    tracking_report { '2023-08-28 19:19:21' }
    slug { 'MyString' }
    current_loggable_type { 1 }
    deactivate { false }
    deactivation_date { '2023-08-28' }
    duration_range_id { 1 }
    temporary_password { false }
  end
end
