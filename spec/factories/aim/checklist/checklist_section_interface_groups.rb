FactoryBot.define do
  factory :aim_checklist_checklist_section_interface_group, class: 'Aim::Checklist::ChecklistSectionInterfaceGroup' do
    add_attribute(:checklist_section_interface_id) { 1 }
    add_attribute(:group_id) { 1 }
  end
end
