FactoryBot.define do
  factory :authorization_request_type_notificable_exception, class: 'Authorization::RequestTypeNotificableException' do
    add_attribute(:request_type_id) { 1 }
    add_attribute(:user_id) { 1 }
  end
end
