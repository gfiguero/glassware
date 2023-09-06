require 'rails_helper'

RSpec.describe "authorization/request_type_document_types/new", type: :view do
  before(:each) do
    assign(:authorization_request_type_document_type, Authorization::RequestTypeDocumentType.new(
      request_type_id: 1,
      name: "MyString",
      description: "MyText",
      validation_type: 1
    ))
  end

  it "renders new authorization_request_type_document_type form" do
    render

    assert_select "form[action=?][method=?]", authorization_request_type_document_types_path, "post" do

      assert_select "input[name=?]", "authorization_request_type_document_type[request_type_id]"

      assert_select "input[name=?]", "authorization_request_type_document_type[name]"

      assert_select "textarea[name=?]", "authorization_request_type_document_type[description]"

      assert_select "input[name=?]", "authorization_request_type_document_type[validation_type]"
    end
  end
end
