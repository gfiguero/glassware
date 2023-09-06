require 'rails_helper'

RSpec.describe "authorization/request_types/index", type: :view do
  before(:each) do
    assign(:authorization_request_types, [
      Authorization::RequestType.create!(
        name: "Name",
        store: 2,
        infrastructure: 3,
        map_id: 4,
        description: "MyText",
        anticipation_time: "Anticipation Time",
        add_description_to_email: false,
        global_map_options: 5,
        attachment_number: 6,
        check_store_request_auth: false,
        document_type_id: 7,
        max_duration: 8,
        max_workers_number: 9,
        terms_and_conditions_to_save: false,
        show_declaration: false,
        update_until_approved: false,
        scope_type: 10,
        min_workers_number: 11,
        category: 12
      ),
      Authorization::RequestType.create!(
        name: "Name",
        store: 2,
        infrastructure: 3,
        map_id: 4,
        description: "MyText",
        anticipation_time: "Anticipation Time",
        add_description_to_email: false,
        global_map_options: 5,
        attachment_number: 6,
        check_store_request_auth: false,
        document_type_id: 7,
        max_duration: 8,
        max_workers_number: 9,
        terms_and_conditions_to_save: false,
        show_declaration: false,
        update_until_approved: false,
        scope_type: 10,
        min_workers_number: 11,
        category: 12
      )
    ])
  end

  it "renders a list of authorization/request_types" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(4.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Anticipation Time".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(5.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(6.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(7.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(8.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(9.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(10.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(11.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(12.to_s), count: 2
  end
end
