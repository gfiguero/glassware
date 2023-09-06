require 'rails_helper'

RSpec.describe "authorization/request_type_notificable_groups/show", type: :view do
  before(:each) do
    assign(:authorization_request_type_notificable_group, Authorization::RequestTypeNotificableGroup.create!(
      request_type_id: 2,
      group_id: 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
