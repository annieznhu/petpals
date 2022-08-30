# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_08_30_101805) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dogs", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "species"
    t.string "temper"
    t.bigint "user_id", null: false
    t.text "description"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "toys", default: [], array: true
    t.index ["user_id"], name: "index_dogs_on_user_id"
  end

  create_table "likes", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "dog_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dog_id"], name: "index_likes_on_dog_id"
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "matches", force: :cascade do |t|
    t.bigint "dog_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "second_dog_id"
    t.index ["dog_id"], name: "index_matches_on_dog_id"
    t.index ["second_dog_id"], name: "index_matches_on_second_dog_id"
  end

  create_table "meetings", force: :cascade do |t|
    t.bigint "dog_id", null: false
    t.date "date"
    t.bigint "place_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "second_dog_id"
    t.index ["dog_id"], name: "index_meetings_on_dog_id"
    t.index ["place_id"], name: "index_meetings_on_place_id"
    t.index ["second_dog_id"], name: "index_meetings_on_second_dog_id"
  end

  create_table "messages", force: :cascade do |t|
    t.text "content"
    t.bigint "user_id", null: false
    t.bigint "match_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["match_id"], name: "index_messages_on_match_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "places", force: :cascade do |t|
    t.integer "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "address"
  end

  create_table "reviews", force: :cascade do |t|
    t.bigint "place_id", null: false
    t.bigint "user_id", null: false
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "rating"
    t.index ["place_id"], name: "index_reviews_on_place_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.string "first_name"
    t.string "last_name"
    t.text "description"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "walks", force: :cascade do |t|
    t.date "date"
    t.bigint "place_id", null: false
    t.bigint "dog_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dog_id"], name: "index_walks_on_dog_id"
    t.index ["place_id"], name: "index_walks_on_place_id"
  end

  add_foreign_key "dogs", "users"
  add_foreign_key "likes", "dogs"
  add_foreign_key "likes", "users"
  add_foreign_key "matches", "dogs"
  add_foreign_key "matches", "dogs", column: "second_dog_id"
  add_foreign_key "meetings", "dogs"
  add_foreign_key "meetings", "dogs", column: "second_dog_id"
  add_foreign_key "meetings", "places"
  add_foreign_key "messages", "matches"
  add_foreign_key "messages", "users"
  add_foreign_key "reviews", "places"
  add_foreign_key "reviews", "users"
  add_foreign_key "walks", "dogs"
  add_foreign_key "walks", "places"
end
