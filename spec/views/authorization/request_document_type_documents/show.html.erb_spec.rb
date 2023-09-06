require 'rails_helper'

RSpec.describe "authorization/request_document_type_documents/show", type: :view do
  before(:each) do
    assign(:authorization_request_document_type_document, Authorization::RequestDocumentTypeDocument.create!(
      request_id: 2,
      document_type_id: 3,
      document_id: 4
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
  end
end
