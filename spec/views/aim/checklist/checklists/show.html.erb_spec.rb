require 'rails_helper'

RSpec.describe "aim/checklist/checklists/show", type: :view do
  before(:each) do
    assign(:aim/checklist_checklist, Aim::Checklist::Checklist.create!(
      checklist_interface_id: 2,
      map_id: 3,
      store_id: 4,
      user_id: 5,
      global_grade: "9.99",
      service_id: 6,
      infrastructure_id: 7,
      slug: "Slug",
      user_start_position: "",
      user_finish_position: "",
      grade_min: 8,
      grade_max: 9
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/7/)
    expect(rendered).to match(/Slug/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/8/)
    expect(rendered).to match(/9/)
  end
end
