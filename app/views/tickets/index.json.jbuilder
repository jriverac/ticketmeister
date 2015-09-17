json.array!(@tickets) do |ticket|
  json.extract! ticket, :id, :zendesk_id, :status, :priority, :channel, :requester, :subject, :request_date, :assigned_date, :solved_date, :platform, :be_driver, :be_other_reason
  json.url ticket_url(ticket, format: :json)
end
