json.array!(@jiras) do |jira|
  json.extract! jira, :id, :ticket_id, :key, :sumary, :issue_type, :status, :priority, :resolution, :reporter, :created, :description, :date_of_first_response, :sales_priority, :acceptance_criteria
  json.url jira_url(jira, format: :json)
end
