require 'rails_helper'

RSpec.describe "authorization/scanned_frames/edit", type: :view do
  let(:authorization_scanned_frame) {
    Authorization::ScannedFrame.create!(
      map_id: 1,
      frame_text: "MyText",
      format_type: "MyString"
    )
  }

  before(:each) do
    assign(:authorization_scanned_frame, authorization_scanned_frame)
  end

  it "renders the edit authorization_scanned_frame form" do
    render

    assert_select "form[action=?][method=?]", authorization_scanned_frame_path(authorization_scanned_frame), "post" do

      assert_select "input[name=?]", "authorization_scanned_frame[map_id]"

      assert_select "textarea[name=?]", "authorization_scanned_frame[frame_text]"

      assert_select "input[name=?]", "authorization_scanned_frame[format_type]"
    end
  end
end
