class CreateTickets < ActiveRecord::Migration[5.0]
  def change
    create_table :tickets do |t|
      t.belongs_to :trip, index: true
      t.integer :number
    end
  end
end
