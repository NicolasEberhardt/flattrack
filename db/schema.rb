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

ActiveRecord::Schema.define(version: 2019_07_23_082510) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.string "text", null: false
    t.bigint "user_id"
    t.bigint "task_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["task_id"], name: "index_comments_on_task_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contracts", force: :cascade do |t|
    t.bigint "flat_id"
    t.date "start_date", null: false
    t.date "end_date"
    t.integer "monthly_rent", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["flat_id"], name: "index_contracts_on_flat_id"
  end

  create_table "flat_photos", force: :cascade do |t|
    t.string "photo", null: false
    t.bigint "flat_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["flat_id"], name: "index_flat_photos_on_flat_id"
  end

  create_table "flats", force: :cascade do |t|
    t.string "address", null: false
    t.integer "area"
    t.integer "rooms"
    t.integer "parking_space"
    t.bigint "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "latitude"
    t.float "longitude"
    t.integer "monthly_rent_cents", default: 0, null: false
    t.string "monthly_rent_currency", default: "EUR", null: false
    t.string "comment"
    t.string "address_specification"
    t.index ["company_id"], name: "index_flats_on_company_id"
  end

  create_table "inventories", force: :cascade do |t|
    t.string "name", null: false
    t.integer "historic_value", null: false
    t.integer "book_value"
    t.string "description"
    t.string "condition"
    t.bigint "flat_id"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "replaced", default: false, null: false
    t.boolean "deleted", default: false, null: false
    t.string "photo"
    t.index ["category_id"], name: "index_inventories_on_category_id"
    t.index ["flat_id"], name: "index_inventories_on_flat_id"
  end

  create_table "inventory_categories", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "participations", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "task_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["task_id"], name: "index_participations_on_task_id"
    t.index ["user_id"], name: "index_participations_on_user_id"
  end

  create_table "task_categories", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.string "title", null: false
    t.string "description"
    t.string "status", default: "open", null: false
    t.bigint "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "category_id"
    t.integer "urgency", default: 3, null: false
    t.bigint "flat_id"
    t.bigint "user_id"
    t.index ["category_id"], name: "index_tasks_on_category_id"
    t.index ["company_id"], name: "index_tasks_on_company_id"
    t.index ["flat_id"], name: "index_tasks_on_flat_id"
    t.index ["user_id"], name: "index_tasks_on_user_id"
  end

  create_table "transaction_categories", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transactions", force: :cascade do |t|
    t.bigint "flat_id"
    t.integer "amount"
    t.date "date", null: false
    t.string "description"
    t.boolean "is_expense", null: false
    t.bigint "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "category_id"
    t.integer "amount_cents", default: 0, null: false
    t.string "amount_currency", default: "EUR", null: false
    t.index ["category_id"], name: "index_transactions_on_category_id"
    t.index ["company_id"], name: "index_transactions_on_company_id"
    t.index ["flat_id"], name: "index_transactions_on_flat_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "company_id"
    t.string "name"
    t.string "photo"
    t.index ["company_id"], name: "index_users_on_company_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "comments", "tasks"
  add_foreign_key "comments", "users"
  add_foreign_key "contracts", "flats"
  add_foreign_key "flat_photos", "flats"
  add_foreign_key "flats", "companies"
  add_foreign_key "inventories", "flats"
  add_foreign_key "inventories", "inventory_categories", column: "category_id"
  add_foreign_key "participations", "tasks"
  add_foreign_key "participations", "users"
  add_foreign_key "tasks", "companies"
  add_foreign_key "tasks", "flats"
  add_foreign_key "tasks", "task_categories", column: "category_id"
  add_foreign_key "tasks", "users"
  add_foreign_key "transactions", "companies"
  add_foreign_key "transactions", "flats"
  add_foreign_key "transactions", "transaction_categories", column: "category_id"
  add_foreign_key "users", "companies"
end
