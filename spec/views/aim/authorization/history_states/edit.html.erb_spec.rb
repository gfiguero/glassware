require 'rails_helper'

RSpec.describe "aim/authorization/history_states/edit", type: :view do
  let(:aim/authorization_history_state) {
    Aim::Authorization::HistoryState.create!(
      request_id: 1,
      state: "MyString",
      state_translate: "MyString"
    )
  }

  before(:each) do
    assign(:aim/authorization_history_state, aim/authorization_history_state)
  end

  it "renders the edit aim/authorization_history_state form" do
    render

    assert_select "form[action=?][method=?]", aim/authorization_history_state_path(aim/authorization_history_state), "post" do

      assert_select "input[name=?]", "aim/authorization_history_state[request_id]"

      assert_select "input[name=?]", "aim/authorization_history_state[state]"

      assert_select "input[name=?]", "aim/authorization_history_state[state_translate]"
    end
  end
end
