class RenameColumnInTrips < ActiveRecord::Migration[5.0]
  def change
    rename_column :trips, :date_when_go, :departure
    rename_column :trips, :date_when_arrived, :arrival
  end
end
