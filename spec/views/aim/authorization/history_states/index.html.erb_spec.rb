require 'rails_helper'

RSpec.describe "aim/authorization/history_states/index", type: :view do
  before(:each) do
    assign(:aim_authorization_history_states, [
      Aim::Authorization::HistoryState.create!(
        request_id: 2,
        state: "State",
        state_translate: "State Translate"
      ),
      Aim::Authorization::HistoryState.create!(
        request_id: 2,
        state: "State",
        state_translate: "State Translate"
      )
    ])
  end

  it "renders a list of aim/authorization/history_states" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("State".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("State Translate".to_s), count: 2
  end
end
