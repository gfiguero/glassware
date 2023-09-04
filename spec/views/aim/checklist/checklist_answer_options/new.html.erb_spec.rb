require 'rails_helper'

RSpec.describe "aim/checklist/checklist_answer_options/new", type: :view do
  before(:each) do
    assign(:aim/checklist_checklist_answer_option, Aim::Checklist::ChecklistAnswerOption.new(
      name: "MyString"
    ))
  end

  it "renders new aim/checklist_checklist_answer_option form" do
    render

    assert_select "form[action=?][method=?]", aim_checklist_checklist_answer_options_path, "post" do

      assert_select "input[name=?]", "aim/checklist_checklist_answer_option[name]"
    end
  end
end
