FactoryBot.define do
  factory :aim_core_user, class: 'Aim::Core::User' do
    add_attribute(:name) { "MyString" }
    add_attribute(:email) { "MyString" }
    add_attribute(:encrypted_password) { "MyString" }
    add_attribute(:reset_password_token) { "MyString" }
    add_attribute(:reset_password_sent_at) { "2023-09-04 15:58:59" }
    add_attribute(:remember_created_at) { "2023-09-04 15:58:59" }
    add_attribute(:sign_in_count) { 1 }
    add_attribute(:current_sign_in_at) { "2023-09-04 15:58:59" }
    add_attribute(:last_sign_in_at) { "2023-09-04 15:58:59" }
    add_attribute(:current_sign_in_ip) { "MyString" }
    add_attribute(:last_sign_in_ip) { "MyString" }
    add_attribute(:role) { "MyString" }
    add_attribute(:created_at) { "2023-09-04 15:58:59" }
    add_attribute(:updated_at) { "2023-09-04 15:58:59" }
    add_attribute(:token) { "MyString" }
    add_attribute(:deleted_at) { "2023-09-04 15:58:59" }
    add_attribute(:map_id) { 1 }
    add_attribute(:type) { "" }
    add_attribute(:rut) { "MyString" }
    add_attribute(:turn) { "MyString" }
    add_attribute(:address) { "MyString" }
    add_attribute(:gender) { "MyString" }
    add_attribute(:last_names) { "MyString" }
    add_attribute(:imei) { "MyString" }
    add_attribute(:username) { "MyString" }
    add_attribute(:position) { "" }
    add_attribute(:zone_id) { 1 }
    add_attribute(:state) { "MyString" }
    add_attribute(:state_updated_at) { "2023-09-04 15:58:59" }
    add_attribute(:phone_number) { "MyString" }
    add_attribute(:external_id) { "MyString" }
    add_attribute(:password_changed_at) { "2023-09-04 15:58:59" }
    add_attribute(:last_activity_at) { "2023-09-04 15:58:59" }
    add_attribute(:expired_at) { "2023-09-04 15:58:59" }
    add_attribute(:locked_at) { "2023-09-04 15:58:59" }
    add_attribute(:failed_attempts) { 1 }
    add_attribute(:unlock_token) { "MyString" }
    add_attribute(:confirmation_token) { "MyString" }
    add_attribute(:confirmed_at) { "2023-09-04 15:58:59" }
    add_attribute(:confirmation_sent_at) { "2023-09-04 15:58:59" }
    add_attribute(:unconfirmed_email) { "MyString" }
    add_attribute(:provider) { "MyString" }
    add_attribute(:initials) { "MyString" }
    add_attribute(:tracking_report) { "2023-09-04 15:58:59" }
    add_attribute(:slug) { "MyString" }
    add_attribute(:current_loggable_type) { 1 }
    add_attribute(:deactivate) { false }
    add_attribute(:deactivation_date) { "2023-09-04" }
    add_attribute(:duration_range_id) { 1 }
    add_attribute(:temporary_password) { false }
  end
end
