class AddRentHouseRefToNearestStations < ActiveRecord::Migration[6.0]
  def change
    add_reference :nearest_stations, :rent_house, null: false, foreign_key: true
  end
end
