require 'rails_helper'

RSpec.describe "authorization/request_type_worker_profile_document_types/show", type: :view do
  before(:each) do
    assign(:authorization_request_type_worker_profile_document_type, Authorization::RequestTypeWorkerProfileDocumentType.create!(
      worker_profile_id: 2,
      document_type_id: 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
