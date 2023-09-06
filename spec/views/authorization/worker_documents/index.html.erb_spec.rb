require 'rails_helper'

RSpec.describe "authorization/worker_documents/index", type: :view do
  before(:each) do
    assign(:authorization_worker_documents, [
      Authorization::WorkerDocument.create!(
        contact_id: 2,
        document_type_id: 3,
        request_worker_profile_id: 4,
        file_file_name: "File File Name",
        file_content_type: "File Content Type",
        file_file_size: 5,
        state: 6,
        user_id: 7,
        workerable_worker_id: 8,
        worker_document_version_id: 9
      ),
      Authorization::WorkerDocument.create!(
        contact_id: 2,
        document_type_id: 3,
        request_worker_profile_id: 4,
        file_file_name: "File File Name",
        file_content_type: "File Content Type",
        file_file_size: 5,
        state: 6,
        user_id: 7,
        workerable_worker_id: 8,
        worker_document_version_id: 9
      )
    ])
  end

  it "renders a list of authorization/worker_documents" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(4.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("File File Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("File Content Type".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(5.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(6.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(7.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(8.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(9.to_s), count: 2
  end
end
