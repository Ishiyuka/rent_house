class CreateRentHouses < ActiveRecord::Migration[6.0]
  def change
    create_table :rent_houses do |t|
      t.string :name
      t.string :rent
      t.string :address
      t.string :age
      t.text :note

      t.timestamps
    end
  end
end
