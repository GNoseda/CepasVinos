# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_01_19_041242) do

  create_table "cepas", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cepas_vinos", id: false, force: :cascade do |t|
    t.integer "vino_id", null: false
    t.integer "cepa_id", null: false
    t.index ["cepa_id", "vino_id"], name: "index_cepas_vinos_on_cepa_id_and_vino_id"
    t.index ["vino_id", "cepa_id"], name: "index_cepas_vinos_on_vino_id_and_cepa_id"
  end

  create_table "vinos", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
