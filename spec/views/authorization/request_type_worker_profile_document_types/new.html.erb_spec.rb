require 'rails_helper'

RSpec.describe "authorization/request_type_worker_profile_document_types/new", type: :view do
  before(:each) do
    assign(:authorization_request_type_worker_profile_document_type, Authorization::RequestTypeWorkerProfileDocumentType.new(
      worker_profile_id: 1,
      document_type_id: 1
    ))
  end

  it "renders new authorization_request_type_worker_profile_document_type form" do
    render

    assert_select "form[action=?][method=?]", authorization_request_type_worker_profile_document_types_path, "post" do

      assert_select "input[name=?]", "authorization_request_type_worker_profile_document_type[worker_profile_id]"

      assert_select "input[name=?]", "authorization_request_type_worker_profile_document_type[document_type_id]"
    end
  end
end
