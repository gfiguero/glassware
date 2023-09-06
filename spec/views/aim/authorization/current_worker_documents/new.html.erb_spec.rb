require 'rails_helper'

RSpec.describe "aim/authorization/current_worker_documents/new", type: :view do
  before(:each) do
    assign(:aim/authorization_current_worker_document, Aim::Authorization::CurrentWorkerDocument.new(
      request_workerable_worker_id: 1,
      worker_document_id: 1
    ))
  end

  it "renders new aim/authorization_current_worker_document form" do
    render

    assert_select "form[action=?][method=?]", aim_authorization_current_worker_documents_path, "post" do

      assert_select "input[name=?]", "aim/authorization_current_worker_document[request_workerable_worker_id]"

      assert_select "input[name=?]", "aim/authorization_current_worker_document[worker_document_id]"
    end
  end
end
