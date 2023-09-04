FactoryBot.define do
  factory :aim_checklist_checklist_interface_map, class: 'Aim::Checklist::ChecklistInterfaceMap' do
    add_attribute(:checklist_interface_id) { 1 }
    add_attribute(:map_id) { 1 }
  end
end
