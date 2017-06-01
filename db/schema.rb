# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170601100354) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "divorces", force: :cascade do |t|
    t.string "separation_type"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_divorces_on_user_id"
  end

  create_table "documents", force: :cascade do |t|
    t.string "description"
    t.string "doc_name"
    t.boolean "uploaded"
    t.string "category"
    t.bigint "divorce_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "attachment"
    t.index ["divorce_id"], name: "index_documents_on_divorce_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "gender"
    t.integer "child_nb"
    t.integer "property_nb"
    t.string "status_pro"
    t.integer "bank_account_nb"
    t.integer "credit_nb"
    t.integer "insurance_nb"
    t.integer "vehicle_nb"
    t.string "first_name"
    t.string "last_name"
    t.boolean "amiable"
    t.string "contract_type"
    t.string "statut_pro_conjoint"
    t.boolean "mariage_contract"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "divorces", "users"
  add_foreign_key "documents", "divorces"
end
