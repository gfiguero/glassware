require 'rails_helper'

RSpec.describe "authorization/request_type_worker_profile_document_types/edit", type: :view do
  let(:authorization_request_type_worker_profile_document_type) {
    Authorization::RequestTypeWorkerProfileDocumentType.create!(
      worker_profile_id: 1,
      document_type_id: 1
    )
  }

  before(:each) do
    assign(:authorization_request_type_worker_profile_document_type, authorization_request_type_worker_profile_document_type)
  end

  it "renders the edit authorization_request_type_worker_profile_document_type form" do
    render

    assert_select "form[action=?][method=?]", authorization_request_type_worker_profile_document_type_path(authorization_request_type_worker_profile_document_type), "post" do

      assert_select "input[name=?]", "authorization_request_type_worker_profile_document_type[worker_profile_id]"

      assert_select "input[name=?]", "authorization_request_type_worker_profile_document_type[document_type_id]"
    end
  end
end
