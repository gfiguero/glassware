require 'rails_helper'

RSpec.describe "authorization/requests/show", type: :view do
  before(:each) do
    assign(:authorization_request, Authorization::Request.create!(
      requester_id: 2,
      request_type_id: 3,
      interest_point_id: 4,
      interest_point_type: "Interest Point Type",
      state: "State",
      from_time_num: 5,
      until_time_num: 6,
      map_id: 7,
      requester_kind: 8,
      requester_role: "Requester Role",
      requester_comments: "MyText",
      supplier_comments: "MyText",
      comments: "MyText",
      supplier_id: 9,
      requester_identification: "Requester Identification",
      requester_name: "Requester Name",
      requester_phone: "Requester Phone",
      requester_email: "Requester Email",
      for_mall: false,
      payroll_workers_file_name: "Payroll Workers File Name",
      payroll_workers_content_type: "Payroll Workers Content Type",
      payroll_workers_file_size: 10,
      slug: "Slug",
      mixed: 11,
      requester_type: 12
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/Interest Point Type/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/7/)
    expect(rendered).to match(/8/)
    expect(rendered).to match(/Requester Role/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/9/)
    expect(rendered).to match(/Requester Identification/)
    expect(rendered).to match(/Requester Name/)
    expect(rendered).to match(/Requester Phone/)
    expect(rendered).to match(/Requester Email/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Payroll Workers File Name/)
    expect(rendered).to match(/Payroll Workers Content Type/)
    expect(rendered).to match(/10/)
    expect(rendered).to match(/Slug/)
    expect(rendered).to match(/11/)
    expect(rendered).to match(/12/)
  end
end
