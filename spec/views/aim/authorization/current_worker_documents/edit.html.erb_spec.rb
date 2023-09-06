require 'rails_helper'

RSpec.describe "aim/authorization/current_worker_documents/edit", type: :view do
  let(:aim/authorization_current_worker_document) {
    Aim::Authorization::CurrentWorkerDocument.create!(
      request_workerable_worker_id: 1,
      worker_document_id: 1
    )
  }

  before(:each) do
    assign(:aim/authorization_current_worker_document, aim/authorization_current_worker_document)
  end

  it "renders the edit aim/authorization_current_worker_document form" do
    render

    assert_select "form[action=?][method=?]", aim/authorization_current_worker_document_path(aim/authorization_current_worker_document), "post" do

      assert_select "input[name=?]", "aim/authorization_current_worker_document[request_workerable_worker_id]"

      assert_select "input[name=?]", "aim/authorization_current_worker_document[worker_document_id]"
    end
  end
end
