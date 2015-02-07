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

ActiveRecord::Schema.define(version: 20150207014215) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dailies", force: true do |t|
    t.text     "title",                    null: false
    t.integer  "rank"
    t.integer  "user_id",                  null: false
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.datetime "last_checked"
    t.string   "description"
    t.integer  "strength",     default: 3
  end

  add_index "dailies", ["user_id"], name: "index_dailies_on_user_id", using: :btree

  create_table "habits", force: true do |t|
    t.string   "title",                      null: false
    t.integer  "user_id",                    null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "rank"
    t.string   "quality",     default: "gb"
    t.string   "description"
    t.integer  "strength",    default: 3
  end

  add_index "habits", ["user_id"], name: "index_habits_on_user_id", using: :btree

  create_table "rewards", force: true do |t|
    t.string   "title",       null: false
    t.integer  "rank"
    t.integer  "user_id",     null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "description"
  end

  add_index "rewards", ["user_id"], name: "index_rewards_on_user_id", using: :btree

  create_table "taggings", force: true do |t|
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tag_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "taggings", ["tag_id"], name: "index_taggings_on_tag_id", using: :btree
  add_index "taggings", ["taggable_type", "taggable_id"], name: "index_taggings_on_taggable_type_and_taggable_id", using: :btree

  create_table "tags", force: true do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "tags", ["name"], name: "index_tags_on_name", using: :btree

  create_table "task_clicks", force: true do |t|
    t.string   "clickable_type",             null: false
    t.integer  "clickable_id",               null: false
    t.integer  "sign",           default: 1
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "task_clicks", ["clickable_id"], name: "index_task_clicks_on_clickable_id", using: :btree

  create_table "todos", force: true do |t|
    t.text     "title",                   null: false
    t.integer  "user_id",                 null: false
    t.integer  "rank"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "description"
    t.integer  "strength",    default: 3
  end

  create_table "users", force: true do |t|
    t.string   "username",                     null: false
    t.string   "password_digest",              null: false
    t.string   "session_token",                null: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.integer  "gold",            default: 0
    t.integer  "xp",              default: 0
    t.integer  "health",          default: 50
    t.integer  "level",           default: 1
    t.integer  "max_health",      default: 50
  end

  add_index "users", ["session_token"], name: "index_users_on_session_token", using: :btree
  add_index "users", ["username"], name: "index_users_on_username", using: :btree

end
