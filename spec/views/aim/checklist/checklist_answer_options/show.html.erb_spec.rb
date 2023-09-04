require 'rails_helper'

RSpec.describe "aim/checklist/checklist_answer_options/show", type: :view do
  before(:each) do
    assign(:aim/checklist_checklist_answer_option, Aim::Checklist::ChecklistAnswerOption.create!(
      name: "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
