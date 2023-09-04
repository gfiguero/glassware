require 'rails_helper'

RSpec.describe "aim/checklist/checklist_answer_options_tags/edit", type: :view do
  let(:aim/checklist_checklist_answer_options_tag) {
    Aim::Checklist::ChecklistAnswerOptionsTag.create!(
      checklist_answer_option_id: 1
    )
  }

  before(:each) do
    assign(:aim/checklist_checklist_answer_options_tag, aim/checklist_checklist_answer_options_tag)
  end

  it "renders the edit aim/checklist_checklist_answer_options_tag form" do
    render

    assert_select "form[action=?][method=?]", aim/checklist_checklist_answer_options_tag_path(aim/checklist_checklist_answer_options_tag), "post" do

      assert_select "input[name=?]", "aim/checklist_checklist_answer_options_tag[checklist_answer_option_id]"
    end
  end
end
