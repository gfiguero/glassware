require 'rails_helper'

RSpec.describe "aim/checklist/checklists/edit", type: :view do
  let(:aim/checklist_checklist) {
    Aim::Checklist::Checklist.create!(
      map_id: 1,
      store_id: 1,
      user_id: 1,
      global_grade: "9.99",
      service_id: 1,
      infrastructure_id: 1,
      slug: "MyString",
      user_start_position: "",
      user_finish_position: "",
      grade_min: 1,
      grade_max: 1
    )
  }

  before(:each) do
    assign(:aim/checklist_checklist, aim/checklist_checklist)
  end

  it "renders the edit aim/checklist_checklist form" do
    render

    assert_select "form[action=?][method=?]", aim/checklist_checklist_path(aim/checklist_checklist), "post" do

      assert_select "input[name=?]", "aim/checklist_checklist[map_id]"

      assert_select "input[name=?]", "aim/checklist_checklist[store_id]"

      assert_select "input[name=?]", "aim/checklist_checklist[user_id]"

      assert_select "input[name=?]", "aim/checklist_checklist[global_grade]"

      assert_select "input[name=?]", "aim/checklist_checklist[service_id]"

      assert_select "input[name=?]", "aim/checklist_checklist[infrastructure_id]"

      assert_select "input[name=?]", "aim/checklist_checklist[slug]"

      assert_select "input[name=?]", "aim/checklist_checklist[user_start_position]"

      assert_select "input[name=?]", "aim/checklist_checklist[user_finish_position]"

      assert_select "input[name=?]", "aim/checklist_checklist[grade_min]"

      assert_select "input[name=?]", "aim/checklist_checklist[grade_max]"
    end
  end
end
