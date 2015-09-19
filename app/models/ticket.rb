class Ticket < ActiveRecord::Base

	def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      ticket = Ticket.find_by_zendesk_id(row[0])
      ticket.new if ticket.nil?
      ticket = Ticket.new(
        zendesk_id: row[0],
        status: row[1],
        priority: row[2],
        channel: 'Zendesk (BE Group)',
        requester: row[3],
        subject: row[4],
        request_date: row[5],
        assigned_date: row[6],
        solved_date: row[7],
        platform: row[8],
        be_driver: row[9],
        be_other_reason: row[10]
        )
      ticket.save
    end
  end
end
