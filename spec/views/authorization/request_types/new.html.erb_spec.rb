require 'rails_helper'

RSpec.describe "authorization/request_types/new", type: :view do
  before(:each) do
    assign(:authorization_request_type, Authorization::RequestType.new(
      name: "MyString",
      store: 1,
      infrastructure: 1,
      map_id: 1,
      description: "MyText",
      anticipation_time: "MyString",
      add_description_to_email: false,
      global_map_options: 1,
      attachment_number: 1,
      check_store_request_auth: false,
      document_type_id: 1,
      max_duration: 1,
      max_workers_number: 1,
      terms_and_conditions_to_save: false,
      show_declaration: false,
      update_until_approved: false,
      scope_type: 1,
      min_workers_number: 1,
      category: 1
    ))
  end

  it "renders new authorization_request_type form" do
    render

    assert_select "form[action=?][method=?]", authorization_request_types_path, "post" do

      assert_select "input[name=?]", "authorization_request_type[name]"

      assert_select "input[name=?]", "authorization_request_type[store]"

      assert_select "input[name=?]", "authorization_request_type[infrastructure]"

      assert_select "input[name=?]", "authorization_request_type[map_id]"

      assert_select "textarea[name=?]", "authorization_request_type[description]"

      assert_select "input[name=?]", "authorization_request_type[anticipation_time]"

      assert_select "input[name=?]", "authorization_request_type[add_description_to_email]"

      assert_select "input[name=?]", "authorization_request_type[global_map_options]"

      assert_select "input[name=?]", "authorization_request_type[attachment_number]"

      assert_select "input[name=?]", "authorization_request_type[check_store_request_auth]"

      assert_select "input[name=?]", "authorization_request_type[document_type_id]"

      assert_select "input[name=?]", "authorization_request_type[max_duration]"

      assert_select "input[name=?]", "authorization_request_type[max_workers_number]"

      assert_select "input[name=?]", "authorization_request_type[terms_and_conditions_to_save]"

      assert_select "input[name=?]", "authorization_request_type[show_declaration]"

      assert_select "input[name=?]", "authorization_request_type[update_until_approved]"

      assert_select "input[name=?]", "authorization_request_type[scope_type]"

      assert_select "input[name=?]", "authorization_request_type[min_workers_number]"

      assert_select "input[name=?]", "authorization_request_type[category]"
    end
  end
end
