FactoryBot.define do
  factory :aim_authorization_history_state, class: 'Aim::Authorization::HistoryState' do
    add_attribute(:request_id) { 1 }
    add_attribute(:state) { "MyString" }
    add_attribute(:state_translate) { "MyString" }
    add_attribute(:date) { "2023-09-06 15:18:22" }
  end
end
