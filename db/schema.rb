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

ActiveRecord::Schema.define(version: 2019_09_22_225610) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
  end

  create_table "comments", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "pickle_id", null: false
    t.string "text"
    t.index ["pickle_id"], name: "index_comments_on_pickle_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "options", force: :cascade do |t|
    t.bigint "pickle_id", null: false
    t.string "text"
    t.string "img_url"
    t.index ["pickle_id"], name: "index_options_on_pickle_id"
  end

  create_table "pickles", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "category_id", null: false
    t.string "description"
    t.index ["category_id"], name: "index_pickles_on_category_id"
    t.index ["user_id"], name: "index_pickles_on_user_id"
  end

  create_table "selections", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "option_id", null: false
    t.index ["option_id"], name: "index_selections_on_option_id"
    t.index ["user_id"], name: "index_selections_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "email"
    t.string "bio"
    t.string "img_url"
    t.string "password_digest"
  end

  add_foreign_key "comments", "pickles"
  add_foreign_key "comments", "users"
  add_foreign_key "options", "pickles"
  add_foreign_key "pickles", "categories"
  add_foreign_key "pickles", "users"
  add_foreign_key "selections", "options"
  add_foreign_key "selections", "users"
end
