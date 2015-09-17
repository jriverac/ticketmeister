require 'rails_helper'

RSpec.describe "tickets/new", type: :view do
  before(:each) do
    assign(:ticket, Ticket.new(
      :zendesk_id => 1,
      :status => "MyString",
      :priority => "MyString",
      :channel => "MyString",
      :requester => "MyString",
      :subject => "MyString",
      :platform => "MyString",
      :be_driver => "MyString",
      :be_other_reason => "MyString"
    ))
  end

  it "renders new ticket form" do
    render

    assert_select "form[action=?][method=?]", tickets_path, "post" do

      assert_select "input#ticket_zendesk_id[name=?]", "ticket[zendesk_id]"

      assert_select "input#ticket_status[name=?]", "ticket[status]"

      assert_select "input#ticket_priority[name=?]", "ticket[priority]"

      assert_select "input#ticket_channel[name=?]", "ticket[channel]"

      assert_select "input#ticket_requester[name=?]", "ticket[requester]"

      assert_select "input#ticket_subject[name=?]", "ticket[subject]"

      assert_select "input#ticket_platform[name=?]", "ticket[platform]"

      assert_select "input#ticket_be_driver[name=?]", "ticket[be_driver]"

      assert_select "input#ticket_be_other_reason[name=?]", "ticket[be_other_reason]"
    end
  end
end
