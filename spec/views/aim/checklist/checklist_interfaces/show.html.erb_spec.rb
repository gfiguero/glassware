require 'rails_helper'

RSpec.describe "aim/checklist/checklist_interfaces/show", type: :view do
  before(:each) do
    assign(:aim/checklist_checklist_interface, Aim::Checklist::ChecklistInterface.create!(
      name: "Name",
      grade_min: 2,
      grade_max: 3,
      grade_interval: 4,
      is_for_store: false,
      icon_file_name: "Icon File Name",
      icon_content_type: "Icon Content Type",
      icon_file_size: 5,
      autogenerate_incident: false,
      is_for_service: false,
      is_for_infrastructure: false,
      checklist_category_id: 6,
      user_start_position: 7,
      user_finish_position: 8,
      expiration_time: 9.5,
      is_section_weight: false,
      show_skip_steps: false,
      show_section_of_skip_steps: false,
      show_pdf_skip_steps: false,
      show_pdf_section_of_skip_steps: false,
      aim_concept_id: 10,
      add_photo_from_gallery: false,
      show_pdf_unsuccess_step_only: false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Icon File Name/)
    expect(rendered).to match(/Icon Content Type/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/7/)
    expect(rendered).to match(/8/)
    expect(rendered).to match(/9.5/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/10/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
  end
end
