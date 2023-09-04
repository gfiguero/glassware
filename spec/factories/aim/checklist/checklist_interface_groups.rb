FactoryBot.define do
  factory :aim_checklist_checklist_interface_group, class: 'Aim::Checklist::ChecklistInterfaceGroup' do
    add_attribute(:checklist_interface_id) { 1 }
    add_attribute(:group_id) { 1 }
  end
end
