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

ActiveRecord::Schema.define(version: 20130916215257) do

  create_table "bootsy_image_galleries", force: true do |t|
    t.integer  "bootsy_resource_id"
    t.string   "bootsy_resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bootsy_images", force: true do |t|
    t.string   "image_file"
    t.integer  "image_gallery_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.text     "specs"
    t.integer  "vendor_id"
    t.string   "vpn"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "items", ["vpn"], name: "index_items_on_vpn", unique: true

  create_table "prices", force: true do |t|
    t.integer  "item_id"
    t.integer  "supplier_id"
    t.integer  "cost"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "suppliers", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "website"
    t.string   "account_number"
    t.string   "sales_contact"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "taggings", force: true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context",       limit: 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id"], name: "index_taggings_on_tag_id"
  add_index "taggings", ["taggable_id", "taggable_type", "context"], name: "index_taggings_on_taggable_id_and_taggable_type_and_context"

  create_table "tags", force: true do |t|
    t.string "name"
  end

  create_table "vendor_items", force: true do |t|
    t.integer  "item_id"
    t.integer  "vendor_id"
    t.string   "spn"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "vendor_items", ["spn"], name: "index_vendor_items_on_spn", unique: true

  create_table "vendors", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "website"
    t.string   "support_page"
    t.boolean  "partner"
    t.string   "partner_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
