require 'rails_helper'

RSpec.describe "authorization/scanned_frames/index", type: :view do
  before(:each) do
    assign(:authorization_scanned_frames, [
      Authorization::ScannedFrame.create!(
        map_id: 2,
        frame_text: "MyText",
        format_type: "Format Type"
      ),
      Authorization::ScannedFrame.create!(
        map_id: 2,
        frame_text: "MyText",
        format_type: "Format Type"
      )
    ])
  end

  it "renders a list of authorization/scanned_frames" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Format Type".to_s), count: 2
  end
end
