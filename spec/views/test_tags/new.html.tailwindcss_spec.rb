require 'rails_helper'

RSpec.describe "test_tags/new", type: :view do
  before(:each) do
    assign(:test_tag, TestTag.new(
      name: "MyString",
      description: "MyText"
    ))
  end

  it "renders new test_tag form" do
    render

    assert_select "form[action=?][method=?]", test_tags_path, "post" do

      assert_select "input[name=?]", "test_tag[name]"

      assert_select "textarea[name=?]", "test_tag[description]"
    end
  end
end
