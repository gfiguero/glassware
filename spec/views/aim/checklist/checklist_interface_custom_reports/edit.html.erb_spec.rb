require 'rails_helper'

RSpec.describe "aim/checklist/checklist_interface_custom_reports/edit", type: :view do
  let(:aim/checklist_checklist_interface_custom_report) {
    Aim::Checklist::ChecklistInterfaceCustomReport.create!(
      checklist_interface_id: 1
    )
  }

  before(:each) do
    assign(:aim/checklist_checklist_interface_custom_report, aim/checklist_checklist_interface_custom_report)
  end

  it "renders the edit aim/checklist_checklist_interface_custom_report form" do
    render

    assert_select "form[action=?][method=?]", aim/checklist_checklist_interface_custom_report_path(aim/checklist_checklist_interface_custom_report), "post" do

      assert_select "input[name=?]", "aim/checklist_checklist_interface_custom_report[checklist_interface_id]"
    end
  end
end
