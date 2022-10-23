ActiveRecord::Schema.define(version: 2022_10_22_140807) do

  create_table "nearest_stations", force: :cascade do |t|
    t.string "line"
    t.string "station"
    t.string "minute"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "rent_house_id", null: false
    t.index ["rent_house_id"], name: "index_nearest_stations_on_rent_house_id"
  end

  create_table "rent_houses", force: :cascade do |t|
    t.string "name"
    t.string "rent"
    t.string "address"
    t.string "age"
    t.text "note"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "nearest_stations", "rent_houses"
end
