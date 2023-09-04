require 'rails_helper'

RSpec.describe "aim/checklist/checklist_answer_options_tags/new", type: :view do
  before(:each) do
    assign(:aim/checklist_checklist_answer_options_tag, Aim::Checklist::ChecklistAnswerOptionsTag.new(
      checklist_answer_option_id: 1
    ))
  end

  it "renders new aim/checklist_checklist_answer_options_tag form" do
    render

    assert_select "form[action=?][method=?]", aim_checklist_checklist_answer_options_tags_path, "post" do

      assert_select "input[name=?]", "aim/checklist_checklist_answer_options_tag[checklist_answer_option_id]"
    end
  end
end
