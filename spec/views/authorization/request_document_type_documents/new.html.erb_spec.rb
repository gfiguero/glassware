require 'rails_helper'

RSpec.describe "authorization/request_document_type_documents/new", type: :view do
  before(:each) do
    assign(:authorization_request_document_type_document, Authorization::RequestDocumentTypeDocument.new(
      request_id: 1,
      document_type_id: 1,
      document_id: 1
    ))
  end

  it "renders new authorization_request_document_type_document form" do
    render

    assert_select "form[action=?][method=?]", authorization_request_document_type_documents_path, "post" do

      assert_select "input[name=?]", "authorization_request_document_type_document[request_id]"

      assert_select "input[name=?]", "authorization_request_document_type_document[document_type_id]"

      assert_select "input[name=?]", "authorization_request_document_type_document[document_id]"
    end
  end
end
