require 'rails_helper'

RSpec.describe "aim/authorization/current_worker_documents/show", type: :view do
  before(:each) do
    assign(:aim/authorization_current_worker_document, Aim::Authorization::CurrentWorkerDocument.create!(
      request_workerable_worker_id: 2,
      worker_document_id: 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
