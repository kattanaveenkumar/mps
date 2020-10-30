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

ActiveRecord::Schema.define(version: 2020_10_30_093021) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "sentence_associations", force: :cascade do |t|
    t.bigint "sentence_id", null: false
    t.bigint "top_id"
    t.bigint "right_id"
    t.bigint "down_id"
    t.bigint "left_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["down_id"], name: "index_sentence_associations_on_down_id"
    t.index ["left_id"], name: "index_sentence_associations_on_left_id"
    t.index ["right_id"], name: "index_sentence_associations_on_right_id"
    t.index ["sentence_id"], name: "index_sentence_associations_on_sentence_id"
    t.index ["top_id"], name: "index_sentence_associations_on_top_id"
  end

  create_table "sentences", force: :cascade do |t|
    t.text "text"
    t.integer "node", default: 0
    t.boolean "start"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "sentence_associations", "sentences"
  add_foreign_key "sentence_associations", "sentences", column: "down_id"
  add_foreign_key "sentence_associations", "sentences", column: "left_id"
  add_foreign_key "sentence_associations", "sentences", column: "right_id"
  add_foreign_key "sentence_associations", "sentences", column: "top_id"
end
