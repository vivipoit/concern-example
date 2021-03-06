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

ActiveRecord::Schema.define(version: 2020_06_02_034459) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "invoiced_products", force: :cascade do |t|
    t.bigint "invoice_id", null: false
    t.bigint "product_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["invoice_id"], name: "index_invoiced_products_on_invoice_id"
    t.index ["product_id"], name: "index_invoiced_products_on_product_id"
  end

  create_table "invoices", force: :cascade do |t|
    t.date "issue_date"
    t.date "due_date"
    t.integer "subtotal"
    t.integer "discount"
    t.integer "total"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.integer "regular_price"
    t.integer "discount"
    t.integer "sale_price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "invoiced_products", "invoices"
  add_foreign_key "invoiced_products", "products"
end
