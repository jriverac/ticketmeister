class CreateJiras < ActiveRecord::Migration
  def change
    create_table :jiras do |t|
      t.integer :ticket_id
      t.string :key
      t.string :sumary
      t.string :issue_type
      t.string :status
      t.string :priority
      t.string :resolution
      t.string :reporter
      t.datetime :created
      t.text :description
      t.date :date_of_first_response
      t.string :sales_priority
      t.text :acceptance_criteria

      t.timestamps null: false
    end
  end
end
