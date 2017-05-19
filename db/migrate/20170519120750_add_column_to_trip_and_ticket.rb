class AddColumnToTripAndTicket < ActiveRecord::Migration[5.0]
  def change
    add_column :trips, :tickets_price, :integer
    add_column :tickets, :price, :integer
  end
end
