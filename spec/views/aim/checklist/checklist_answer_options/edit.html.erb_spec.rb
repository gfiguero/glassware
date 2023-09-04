require 'rails_helper'

RSpec.describe "aim/checklist/checklist_answer_options/edit", type: :view do
  let(:aim/checklist_checklist_answer_option) {
    Aim::Checklist::ChecklistAnswerOption.create!(
      name: "MyString"
    )
  }

  before(:each) do
    assign(:aim/checklist_checklist_answer_option, aim/checklist_checklist_answer_option)
  end

  it "renders the edit aim/checklist_checklist_answer_option form" do
    render

    assert_select "form[action=?][method=?]", aim/checklist_checklist_answer_option_path(aim/checklist_checklist_answer_option), "post" do

      assert_select "input[name=?]", "aim/checklist_checklist_answer_option[name]"
    end
  end
end
