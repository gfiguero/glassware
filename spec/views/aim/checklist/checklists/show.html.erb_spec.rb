require 'rails_helper'

RSpec.describe "aim/checklist/checklists/show", type: :view do
  before(:each) do
    assign(:aim/checklist_checklist, Aim::Checklist::Checklist.create!(
      map_id: 2,
      store_id: 3,
      user_id: 4,
      global_grade: "9.99",
      service_id: 5,
      infrastructure_id: 6,
      slug: "Slug",
      user_start_position: "",
      user_finish_position: "",
      grade_min: 7,
      grade_max: 8
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/Slug/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/7/)
    expect(rendered).to match(/8/)
  end
end
