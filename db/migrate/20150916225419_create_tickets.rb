class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.integer :zendesk_id
      t.string :status
      t.string :priority
      t.string :channel
      t.string :requester
      t.string :subject
      t.datetime :request_date
      t.datetime :assigned_date
      t.datetime :solved_date
      t.string :platform
      t.string :be_driver
      t.string :be_other_reason

      t.timestamps null: false
    end
  end
end
