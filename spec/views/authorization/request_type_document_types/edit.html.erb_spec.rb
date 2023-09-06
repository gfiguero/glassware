require 'rails_helper'

RSpec.describe "authorization/request_type_document_types/edit", type: :view do
  let(:authorization_request_type_document_type) {
    Authorization::RequestTypeDocumentType.create!(
      request_type_id: 1,
      name: "MyString",
      description: "MyText",
      validation_type: 1
    )
  }

  before(:each) do
    assign(:authorization_request_type_document_type, authorization_request_type_document_type)
  end

  it "renders the edit authorization_request_type_document_type form" do
    render

    assert_select "form[action=?][method=?]", authorization_request_type_document_type_path(authorization_request_type_document_type), "post" do

      assert_select "input[name=?]", "authorization_request_type_document_type[request_type_id]"

      assert_select "input[name=?]", "authorization_request_type_document_type[name]"

      assert_select "textarea[name=?]", "authorization_request_type_document_type[description]"

      assert_select "input[name=?]", "authorization_request_type_document_type[validation_type]"
    end
  end
end
