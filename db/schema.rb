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

ActiveRecord::Schema[7.0].define(version: 2023_07_14_063655) do
  create_table "events", force: :cascade do |t|
    t.integer "id_raduno"
    t.string "email_partecipante"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id", null: false
    t.integer "raduno_id", null: false
    t.index ["raduno_id"], name: "index_events_on_raduno_id"
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "radunos", force: :cascade do |t|
    t.string "nome_darte_organizzatore"
    t.string "descrizione"
    t.date "data"
    t.time "orario"
    t.string "luogo"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id", null: false
    t.index ["user_id"], name: "index_radunos_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "provider"
    t.string "uid"
    t.string "status"
    t.string "name"
    t.string "image"
    t.string "artist0"
    t.string "artist1"
    t.string "artist2"
    t.string "artist3"
    t.string "artist4"
    t.string "image0"
    t.string "image1"
    t.string "image2"
    t.string "image3"
    t.string "image4"
    t.string "image5"
    t.string "image6"
    t.string "image7"
    t.string "image8"
    t.string "image9"
    t.boolean "is_artist", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["uid"], name: "index_users_on_uid", unique: true
  end

  add_foreign_key "events", "radunos"
  add_foreign_key "events", "users"
  add_foreign_key "radunos", "users"
end
