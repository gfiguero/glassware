require 'rails_helper'

RSpec.describe "authorization/scanned_frames/show", type: :view do
  before(:each) do
    assign(:authorization_scanned_frame, Authorization::ScannedFrame.create!(
      map_id: 2,
      frame_text: "MyText",
      format_type: "Format Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Format Type/)
  end
end
