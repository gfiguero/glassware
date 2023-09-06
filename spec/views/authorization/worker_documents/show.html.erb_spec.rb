require 'rails_helper'

RSpec.describe "authorization/worker_documents/show", type: :view do
  before(:each) do
    assign(:authorization_worker_document, Authorization::WorkerDocument.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/File File Name/)
    expect(rendered).to match(/File Content Type/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/7/)
    expect(rendered).to match(/8/)
    expect(rendered).to match(/9/)
  end
end
