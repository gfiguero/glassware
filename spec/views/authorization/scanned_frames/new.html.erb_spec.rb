require 'rails_helper'

RSpec.describe "authorization/scanned_frames/new", type: :view do
  before(:each) do
    assign(:authorization_scanned_frame, Authorization::ScannedFrame.new(
      map_id: 1,
      frame_text: "MyText",
      format_type: "MyString"
    ))
  end

  it "renders new authorization_scanned_frame form" do
    render

    assert_select "form[action=?][method=?]", authorization_scanned_frames_path, "post" do

      assert_select "input[name=?]", "authorization_scanned_frame[map_id]"

      assert_select "textarea[name=?]", "authorization_scanned_frame[frame_text]"

      assert_select "input[name=?]", "authorization_scanned_frame[format_type]"
    end
  end
end
