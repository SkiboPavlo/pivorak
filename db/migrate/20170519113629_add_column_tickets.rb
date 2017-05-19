class AddColumnTickets < ActiveRecord::Migration[5.0]
  def change
    add_column :tickets, :status, :string, default: "can_buy"
    change_column :trips, :departure, :string
    change_column :trips, :arrival, :string
    drop_table :roles
    drop_table :users_roles
  end
end
