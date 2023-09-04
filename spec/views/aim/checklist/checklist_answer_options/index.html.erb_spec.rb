require 'rails_helper'

RSpec.describe "aim/checklist/checklist_answer_options/index", type: :view do
  before(:each) do
    assign(:aim_checklist_checklist_answer_options, [
      Aim::Checklist::ChecklistAnswerOption.create!(
        name: "Name"
      ),
      Aim::Checklist::ChecklistAnswerOption.create!(
        name: "Name"
      )
    ])
  end

  it "renders a list of aim/checklist/checklist_answer_options" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
  end
end
