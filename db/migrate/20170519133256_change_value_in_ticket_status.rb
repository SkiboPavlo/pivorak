class ChangeValueInTicketStatus < ActiveRecord::Migration[5.0]
  def change
    change_column :tickets, :status, :string, default: "available"
  end
end
