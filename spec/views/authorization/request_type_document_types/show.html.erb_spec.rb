require 'rails_helper'

RSpec.describe "authorization/request_type_document_types/show", type: :view do
  before(:each) do
    assign(:authorization_request_type_document_type, Authorization::RequestTypeDocumentType.create!(
      request_type_id: 2,
      name: "Name",
      description: "MyText",
      validation_type: 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/3/)
  end
end
