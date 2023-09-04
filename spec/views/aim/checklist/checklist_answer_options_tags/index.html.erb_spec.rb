require 'rails_helper'

RSpec.describe "aim/checklist/checklist_answer_options_tags/index", type: :view do
  before(:each) do
    assign(:aim_checklist_checklist_answer_options_tags, [
      Aim::Checklist::ChecklistAnswerOptionsTag.create!(
        checklist_answer_option_id: 2
      ),
      Aim::Checklist::ChecklistAnswerOptionsTag.create!(
        checklist_answer_option_id: 2
      )
    ])
  end

  it "renders a list of aim/checklist/checklist_answer_options_tags" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
  end
end
