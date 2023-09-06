require 'rails_helper'

RSpec.describe "aim/authorization/history_states/show", type: :view do
  before(:each) do
    assign(:aim/authorization_history_state, Aim::Authorization::HistoryState.create!(
      request_id: 2,
      state: "State",
      state_translate: "State Translate"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/State Translate/)
  end
end
