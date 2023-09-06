FactoryBot.define do
  factory :authorization_request_workerable_worker, class: 'Authorization::RequestWorkerableWorker' do
    add_attribute(:request_worker_id) { 1 }
  end
end
