require 'rails_helper'

RSpec.describe "test_tags/edit", type: :view do
  let(:test_tag) {
    TestTag.create!(
      name: "MyString",
      description: "MyText"
    )
  }

  before(:each) do
    assign(:test_tag, test_tag)
  end

  it "renders the edit test_tag form" do
    render

    assert_select "form[action=?][method=?]", test_tag_path(test_tag), "post" do

      assert_select "input[name=?]", "test_tag[name]"

      assert_select "textarea[name=?]", "test_tag[description]"
    end
  end
end
