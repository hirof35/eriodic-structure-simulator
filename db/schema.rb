# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2026_04_22_004717) do
  create_table "elements", force: :cascade do |t|
    t.integer "atomic_number"
    t.string "symbol"
    t.string "name"
    t.integer "xpos"
    t.integer "ypos"
    t.string "category"
    t.decimal "melt"
    t.decimal "boil"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "atomic_weight"
    t.index ["atomic_number"], name: "index_elements_on_atomic_number"
  end
end
