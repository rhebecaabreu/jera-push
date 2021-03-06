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

ActiveRecord::Schema.define(version: 20161123200421) do

  create_table "jera_push_devices", force: :cascade do |t|
    t.string   "token"
    t.string   "platform"
    t.integer  "resource_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["platform"], name: "index_jera_push_devices_on_platform"
    t.index ["resource_id"], name: "index_jera_push_devices_on_resource_id"
    t.index ["token", "platform"], name: "index_jera_push_devices_on_token_and_platform", unique: true
    t.index ["token"], name: "index_jera_push_devices_on_token"
  end

  create_table "jera_push_messages", force: :cascade do |t|
    t.text     "content"
    t.text     "broadcast_result"
    t.string   "status"
    t.string   "kind"
    t.string   "topic"
    t.string   "firebase_id"
    t.string   "error_message"
    t.integer  "failure_count",    default: 0
    t.integer  "success_count",    default: 0
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "jera_push_messages_devices", force: :cascade do |t|
    t.integer  "device_id"
    t.integer  "message_id"
    t.string   "status"
    t.string   "error_message"
    t.string   "firebase_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["device_id", "message_id"], name: "jera_push_index_messages_id_devices_id", unique: true
    t.index ["device_id"], name: "index_jera_push_messages_devices_on_device_id"
    t.index ["message_id"], name: "index_jera_push_messages_devices_on_message_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
