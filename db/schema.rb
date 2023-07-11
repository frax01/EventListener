# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_07_07_174127) do
	create_table "radunos", force: :cascade do |t|
	  t.string "nome_darte_organizzatore"
	  t.string "descrizione"
	  t.date "data"
	  t.time "orario"
	  t.string "luogo"
	  t.datetime "created_at", null: false
	  t.datetime "updated_at", null: false
	  t.string "email"
	end
  
	create_table "users", force: :cascade do |t|
	  t.string "nome", default: "", null: false
	  t.string "cognome", default: "", null: false
	  t.string "data_di_nascita", default: "", null: false
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
	  t.index ["email"], name: "index_users_on_email", unique: true
	  t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
	end
  
  end