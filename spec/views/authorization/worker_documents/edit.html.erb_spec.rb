require 'rails_helper'

RSpec.describe "authorization/worker_documents/edit", type: :view do
  let(:authorization_worker_document) {
    Authorization::WorkerDocument.create!(
      contact_id: 1,
      document_type_id: 1,
      request_worker_profile_id: 1,
      file_file_name: "MyString",
      file_content_type: "MyString",
      file_file_size: 1,
      state: 1,
      user_id: 1,
      workerable_worker_id: 1,
      worker_document_version_id: 1
    )
  }

  before(:each) do
    assign(:authorization_worker_document, authorization_worker_document)
  end

  it "renders the edit authorization_worker_document form" do
    render

    assert_select "form[action=?][method=?]", authorization_worker_document_path(authorization_worker_document), "post" do

      assert_select "input[name=?]", "authorization_worker_document[contact_id]"

      assert_select "input[name=?]", "authorization_worker_document[document_type_id]"

      assert_select "input[name=?]", "authorization_worker_document[request_worker_profile_id]"

      assert_select "input[name=?]", "authorization_worker_document[file_file_name]"

      assert_select "input[name=?]", "authorization_worker_document[file_content_type]"

      assert_select "input[name=?]", "authorization_worker_document[file_file_size]"

      assert_select "input[name=?]", "authorization_worker_document[state]"

      assert_select "input[name=?]", "authorization_worker_document[user_id]"

      assert_select "input[name=?]", "authorization_worker_document[workerable_worker_id]"

      assert_select "input[name=?]", "authorization_worker_document[worker_document_version_id]"
    end
  end
end
