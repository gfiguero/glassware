require 'rails_helper'

RSpec.describe "authorization/request_types/show", type: :view do
  before(:each) do
    assign(:authorization_request_type, Authorization::RequestType.create!(
      name: "Name",
      store: 2,
      infrastructure: 3,
      map_id: 4,
      description: "MyText",
      anticipation_time: "Anticipation Time",
      add_description_to_email: false,
      global_map_options: 5,
      attachment_number: 6,
      check_store_request_auth: false,
      document_type_id: 7,
      max_duration: 8,
      max_workers_number: 9,
      terms_and_conditions_to_save: false,
      show_declaration: false,
      update_until_approved: false,
      scope_type: 10,
      min_workers_number: 11,
      category: 12
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Anticipation Time/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/7/)
    expect(rendered).to match(/8/)
    expect(rendered).to match(/9/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/10/)
    expect(rendered).to match(/11/)
    expect(rendered).to match(/12/)
  end
end
