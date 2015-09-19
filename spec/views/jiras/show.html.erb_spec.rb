require 'rails_helper'

RSpec.describe "jiras/show", type: :view do
  before(:each) do
    @jira = assign(:jira, Jira.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Key/)
    expect(rendered).to match(/Sumary/)
    expect(rendered).to match(/Issue Type/)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(/Priority/)
    expect(rendered).to match(/Resolution/)
    expect(rendered).to match(/Reporter/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Sales Priority/)
    expect(rendered).to match(/MyText/)
  end
end
