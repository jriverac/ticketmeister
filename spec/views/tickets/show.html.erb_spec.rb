require 'rails_helper'

RSpec.describe "tickets/show", type: :view do
  before(:each) do
    @ticket = assign(:ticket, Ticket.create!(
      :zendesk_id => 1,
      :status => "Status",
      :priority => "Priority",
      :channel => "Channel",
      :requester => "Requester",
      :subject => "Subject",
      :platform => "Platform",
      :be_driver => "Be Driver",
      :be_other_reason => "Be Other Reason"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(/Priority/)
    expect(rendered).to match(/Channel/)
    expect(rendered).to match(/Requester/)
    expect(rendered).to match(/Subject/)
    expect(rendered).to match(/Platform/)
    expect(rendered).to match(/Be Driver/)
    expect(rendered).to match(/Be Other Reason/)
  end
end
