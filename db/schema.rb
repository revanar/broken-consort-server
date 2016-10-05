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

ActiveRecord::Schema.define(version: 20160930140409) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "books", force: :cascade do |t|
    t.string   "name"
    t.string   "abbr"
    t.integer  "year"
    t.string   "thumb_path"
    t.string   "pdf_path"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "editor_id"
    t.index ["editor_id"], name: "index_books_on_editor_id", using: :btree
  end

  create_table "collections", force: :cascade do |t|
    t.string   "name"
    t.string   "creator"
    t.text     "desc"
    t.string   "thumb_path"
    t.string   "pdf_path"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "composers", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "editors", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "migrations", primary_key: "version", id: :string, limit: 16, force: :cascade do |t|
  end

  create_table "songs", force: :cascade do |t|
    t.string   "name"
    t.integer  "song_no"
    t.integer  "parts_no"
    t.boolean  "has_text"
    t.boolean  "is_transcribed"
    t.string   "pdf_path"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "composer_id"
    t.integer  "book_id"
    t.index ["book_id"], name: "index_songs_on_book_id", using: :btree
    t.index ["composer_id"], name: "index_songs_on_composer_id", using: :btree
  end

  create_table "songs_tags", id: false, force: :cascade do |t|
    t.integer "song_id"
    t.integer "tag_id"
    t.index ["song_id"], name: "index_songs_tags_on_song_id", using: :btree
    t.index ["tag_id"], name: "index_songs_tags_on_tag_id", using: :btree
  end

  create_table "tags", force: :cascade do |t|
    t.string   "name"
    t.string   "abbr"
    t.string   "desc"
    t.string   "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "books", "editors"
  add_foreign_key "songs", "books"
  add_foreign_key "songs", "composers"
  add_foreign_key "songs_tags", "songs"
  add_foreign_key "songs_tags", "tags"
end
