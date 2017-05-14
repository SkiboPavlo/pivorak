class AddColumnToTickets < ActiveRecord::Migration[5.0]
  def change
    add_column :tickets, :created_at, :datetime
    add_column :tickets, :update_at, :datetime
  end
end
