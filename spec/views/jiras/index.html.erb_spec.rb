require 'rails_helper'

RSpec.describe "jiras/index", type: :view do
  before(:each) do
    assign(:jiras, [
      Jira.create!(
        :ticket_id => 1,
        :key => "Key",
        :sumary => "Sumary",
        :issue_type => "Issue Type",
        :status => "Status",
        :priority => "Priority",
        :resolution => "Resolution",
        :reporter => "Reporter",
        :description => "MyText",
        :sales_priority => "Sales Priority",
        :acceptance_criteria => "MyText"
      ),
      Jira.create!(
        :ticket_id => 1,
        :key => "Key",
        :sumary => "Sumary",
        :issue_type => "Issue Type",
        :status => "Status",
        :priority => "Priority",
        :resolution => "Resolution",
        :reporter => "Reporter",
        :description => "MyText",
        :sales_priority => "Sales Priority",
        :acceptance_criteria => "MyText"
      )
    ])
  end

  it "renders a list of jiras" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Key".to_s, :count => 2
    assert_select "tr>td", :text => "Sumary".to_s, :count => 2
    assert_select "tr>td", :text => "Issue Type".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => "Priority".to_s, :count => 2
    assert_select "tr>td", :text => "Resolution".to_s, :count => 2
    assert_select "tr>td", :text => "Reporter".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Sales Priority".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
