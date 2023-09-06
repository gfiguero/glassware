require 'rails_helper'

RSpec.describe "aim/authorization/history_states/new", type: :view do
  before(:each) do
    assign(:aim/authorization_history_state, Aim::Authorization::HistoryState.new(
      request_id: 1,
      state: "MyString",
      state_translate: "MyString"
    ))
  end

  it "renders new aim/authorization_history_state form" do
    render

    assert_select "form[action=?][method=?]", aim_authorization_history_states_path, "post" do

      assert_select "input[name=?]", "aim/authorization_history_state[request_id]"

      assert_select "input[name=?]", "aim/authorization_history_state[state]"

      assert_select "input[name=?]", "aim/authorization_history_state[state_translate]"
    end
  end
end
