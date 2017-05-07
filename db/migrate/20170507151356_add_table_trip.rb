class AddTableTrip < ActiveRecord::Migration[5.0]
  def change
    create_table :trips do |t|
      t.string :city_from
      t.string :city_to
      t.datetime :date_when_go
      t.datetime :date_when_arrived
      t.string :tickets_count
    end
  end
end
