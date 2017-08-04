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

ActiveRecord::Schema.define(version: 20170804083513) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "krissis", force: :cascade do |t|
    t.text "linkedin"
    t.text "facebook"
    t.text "instagram"
    t.text "contact_body"
    t.text "bio_body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "bio_image_file_name"
    t.string "bio_image_content_type"
    t.integer "bio_image_file_size"
    t.datetime "bio_image_updated_at"
  end

  create_table "samples", force: :cascade do |t|
    t.text "caption"
    t.string "category"
    t.string "alt"
    t.bigint "krissi_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.index ["krissi_id"], name: "index_samples_on_krissi_id"
  end

  add_foreign_key "samples", "krissis"
end
