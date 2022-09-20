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

ActiveRecord::Schema[7.0].define(version: 2022_09_20_111448) do
  create_table "books", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "isbn"
    t.string "author"
    t.string "title"
  end

  create_table "books_copies", id: false, force: :cascade do |t|
    t.integer "copy_id", null: false
    t.integer "book_id", null: false
    t.index ["book_id"], name: "index_books_copies_on_book_id"
    t.index ["copy_id"], name: "index_books_copies_on_copy_id"
  end

  create_table "copies", force: :cascade do |t|
    t.integer "book_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "borrower"
    t.string "due_date"
    t.index ["book_id"], name: "index_copies_on_book_id"
  end

end
