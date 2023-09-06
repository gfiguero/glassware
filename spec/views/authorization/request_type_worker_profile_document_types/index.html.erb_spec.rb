require 'rails_helper'

RSpec.describe "authorization/request_type_worker_profile_document_types/index", type: :view do
  before(:each) do
    assign(:authorization_request_type_worker_profile_document_types, [
      Authorization::RequestTypeWorkerProfileDocumentType.create!(
        worker_profile_id: 2,
        document_type_id: 3
      ),
      Authorization::RequestTypeWorkerProfileDocumentType.create!(
        worker_profile_id: 2,
        document_type_id: 3
      )
    ])
  end

  it "renders a list of authorization/request_type_worker_profile_document_types" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
  end
end
