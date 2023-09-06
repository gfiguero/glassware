FactoryBot.define do
  factory :aim_authorization_current_worker_document, class: 'Aim::Authorization::CurrentWorkerDocument' do
    add_attribute(:request_workerable_worker_id) { 1 }
    add_attribute(:worker_document_id) { 1 }
  end
end
