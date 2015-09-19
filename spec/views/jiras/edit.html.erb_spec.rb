require 'rails_helper'

RSpec.describe "jiras/edit", type: :view do
  before(:each) do
    @jira = assign(:jira, Jira.create!(
      :ticket_id => 1,
      :key => "MyString",
      :sumary => "MyString",
      :issue_type => "MyString",
      :status => "MyString",
      :priority => "MyString",
      :resolution => "MyString",
      :reporter => "MyString",
      :description => "MyText",
      :sales_priority => "MyString",
      :acceptance_criteria => "MyText"
    ))
  end

  it "renders the edit jira form" do
    render

    assert_select "form[action=?][method=?]", jira_path(@jira), "post" do

      assert_select "input#jira_ticket_id[name=?]", "jira[ticket_id]"

      assert_select "input#jira_key[name=?]", "jira[key]"

      assert_select "input#jira_sumary[name=?]", "jira[sumary]"

      assert_select "input#jira_issue_type[name=?]", "jira[issue_type]"

      assert_select "input#jira_status[name=?]", "jira[status]"

      assert_select "input#jira_priority[name=?]", "jira[priority]"

      assert_select "input#jira_resolution[name=?]", "jira[resolution]"

      assert_select "input#jira_reporter[name=?]", "jira[reporter]"

      assert_select "textarea#jira_description[name=?]", "jira[description]"

      assert_select "input#jira_sales_priority[name=?]", "jira[sales_priority]"

      assert_select "textarea#jira_acceptance_criteria[name=?]", "jira[acceptance_criteria]"
    end
  end
end
