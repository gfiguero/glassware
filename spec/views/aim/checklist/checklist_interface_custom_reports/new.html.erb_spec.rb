require 'rails_helper'

RSpec.describe "aim/checklist/checklist_interface_custom_reports/new", type: :view do
  before(:each) do
    assign(:aim/checklist_checklist_interface_custom_report, Aim::Checklist::ChecklistInterfaceCustomReport.new(
      custom_report_id: 1,
      checklist_interface_id: 1
    ))
  end

  it "renders new aim/checklist_checklist_interface_custom_report form" do
    render

    assert_select "form[action=?][method=?]", aim_checklist_checklist_interface_custom_reports_path, "post" do

      assert_select "input[name=?]", "aim/checklist_checklist_interface_custom_report[custom_report_id]"

      assert_select "input[name=?]", "aim/checklist_checklist_interface_custom_report[checklist_interface_id]"
    end
  end
end
