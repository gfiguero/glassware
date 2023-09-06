require 'rails_helper'

RSpec.describe "aim/authorization/current_worker_documents/index", type: :view do
  before(:each) do
    assign(:aim_authorization_current_worker_documents, [
      Aim::Authorization::CurrentWorkerDocument.create!(
        request_workerable_worker_id: 2,
        worker_document_id: 3
      ),
      Aim::Authorization::CurrentWorkerDocument.create!(
        request_workerable_worker_id: 2,
        worker_document_id: 3
      )
    ])
  end

  it "renders a list of aim/authorization/current_worker_documents" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
  end
end
