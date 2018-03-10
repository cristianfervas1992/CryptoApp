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

ActiveRecord::Schema.define(version: 20180310030037) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alarms", force: :cascade do |t|
    t.decimal "amount"
    t.decimal "percent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "cryptocurrencies_exchanges_id"
    t.index ["cryptocurrencies_exchanges_id"], name: "index_alarms_on_cryptocurrencies_exchanges_id"
  end

  create_table "cryptocurrencies", force: :cascade do |t|
    t.string "name"
    t.string "symbol"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "img_url"
    t.string "fullname"
  end

  create_table "cryptocurrencies_exchanges", force: :cascade do |t|
    t.bigint "exchange_id"
    t.bigint "cryptocurrency_id"
    t.string "last_update"
    t.decimal "last_volume"
    t.decimal "change"
    t.decimal "last_price"
    t.decimal "high_day"
    t.decimal "low_day"
    t.date "added"
    t.index ["cryptocurrency_id"], name: "index_cryptocurrencies_exchanges_on_cryptocurrency_id"
    t.index ["exchange_id"], name: "index_cryptocurrencies_exchanges_on_exchange_id"
  end

  create_table "exchanges", force: :cascade do |t|
    t.string "name"
    t.integer "coins_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
