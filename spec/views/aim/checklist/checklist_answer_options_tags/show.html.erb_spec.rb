require 'rails_helper'

RSpec.describe "aim/checklist/checklist_answer_options_tags/show", type: :view do
  before(:each) do
    assign(:aim/checklist_checklist_answer_options_tag, Aim::Checklist::ChecklistAnswerOptionsTag.create!(
      checklist_answer_option_id: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
  end
end
