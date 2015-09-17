require 'rails_helper'

RSpec.describe "tickets/index", type: :view do
  before(:each) do
    assign(:tickets, [
      Ticket.create!(
        :zendesk_id => 1,
        :status => "Status",
        :priority => "Priority",
        :channel => "Channel",
        :requester => "Requester",
        :subject => "Subject",
        :platform => "Platform",
        :be_driver => "Be Driver",
        :be_other_reason => "Be Other Reason"
      ),
      Ticket.create!(
        :zendesk_id => 1,
        :status => "Status",
        :priority => "Priority",
        :channel => "Channel",
        :requester => "Requester",
        :subject => "Subject",
        :platform => "Platform",
        :be_driver => "Be Driver",
        :be_other_reason => "Be Other Reason"
      )
    ])
  end

  it "renders a list of tickets" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => "Priority".to_s, :count => 2
    assert_select "tr>td", :text => "Channel".to_s, :count => 2
    assert_select "tr>td", :text => "Requester".to_s, :count => 2
    assert_select "tr>td", :text => "Subject".to_s, :count => 2
    assert_select "tr>td", :text => "Platform".to_s, :count => 2
    assert_select "tr>td", :text => "Be Driver".to_s, :count => 2
    assert_select "tr>td", :text => "Be Other Reason".to_s, :count => 2
  end
end
