require 'rails_helper'

RSpec.describe "aim/checklist/checklist_interface_custom_reports/index", type: :view do
  before(:each) do
    assign(:aim_checklist_checklist_interface_custom_reports, [
      Aim::Checklist::ChecklistInterfaceCustomReport.create!(
        checklist_interface_id: 2
      ),
      Aim::Checklist::ChecklistInterfaceCustomReport.create!(
        checklist_interface_id: 2
      )
    ])
  end

  it "renders a list of aim/checklist/checklist_interface_custom_reports" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
  end
end
