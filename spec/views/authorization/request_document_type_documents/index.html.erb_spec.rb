require 'rails_helper'

RSpec.describe "authorization/request_document_type_documents/index", type: :view do
  before(:each) do
    assign(:authorization_request_document_type_documents, [
      Authorization::RequestDocumentTypeDocument.create!(
        request_id: 2,
        document_type_id: 3,
        document_id: 4
      ),
      Authorization::RequestDocumentTypeDocument.create!(
        request_id: 2,
        document_type_id: 3,
        document_id: 4
      )
    ])
  end

  it "renders a list of authorization/request_document_type_documents" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(4.to_s), count: 2
  end
end
