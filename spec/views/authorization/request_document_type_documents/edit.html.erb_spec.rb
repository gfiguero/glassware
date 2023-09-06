require 'rails_helper'

RSpec.describe "authorization/request_document_type_documents/edit", type: :view do
  let(:authorization_request_document_type_document) {
    Authorization::RequestDocumentTypeDocument.create!(
      request_id: 1,
      document_type_id: 1,
      document_id: 1
    )
  }

  before(:each) do
    assign(:authorization_request_document_type_document, authorization_request_document_type_document)
  end

  it "renders the edit authorization_request_document_type_document form" do
    render

    assert_select "form[action=?][method=?]", authorization_request_document_type_document_path(authorization_request_document_type_document), "post" do

      assert_select "input[name=?]", "authorization_request_document_type_document[request_id]"

      assert_select "input[name=?]", "authorization_request_document_type_document[document_type_id]"

      assert_select "input[name=?]", "authorization_request_document_type_document[document_id]"
    end
  end
end
