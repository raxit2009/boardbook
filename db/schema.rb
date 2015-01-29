# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150128142226) do

  create_table "categories", force: :cascade do |t|
    t.string   "name",              limit: 255
    t.integer  "account_number",    limit: 4
    t.datetime "post_month"
    t.float    "beginning_balance", limit: 24
    t.float    "ending_balance",    limit: 24
    t.float    "net_change",        limit: 24
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "inexpense_id",      limit: 4
  end

  create_table "child_expenses", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.float    "mtd_actual", limit: 24
    t.float    "ytd_actual", limit: 24
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "expense_id", limit: 4
  end

  create_table "expenses", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.float    "mtd_total",  limit: 24
    t.float    "ytd_total",  limit: 24
  end

  create_table "incategories", force: :cascade do |t|
    t.integer  "account_number", limit: 4
    t.integer  "property",       limit: 4
    t.string   "post_month",     limit: 255
    t.string   "tran_date",      limit: 255
    t.string   "refer",          limit: 255
    t.string   "description",    limit: 255
    t.string   "debit",          limit: 255
    t.string   "credit",         limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "inexpenses", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.float    "mtd_actual", limit: 24
    t.float    "ytd_actual", limit: 24
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "expense_id", limit: 4
  end

end
