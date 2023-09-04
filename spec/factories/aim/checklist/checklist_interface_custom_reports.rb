FactoryBot.define do
  factory :aim_checklist_checklist_interface_custom_report, class: 'Aim::Checklist::ChecklistInterfaceCustomReport' do
    add_attribute(:custom_report_id) { 1 }
    add_attribute(:checklist_interface_id) { 1 }
  end
end
