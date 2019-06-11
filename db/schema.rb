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

ActiveRecord::Schema.define(version: 20190416144950) do

  create_table "areas", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "prefecture"
    t.string   "city"
    t.string   "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people_ranges", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",             null: false
    t.integer  "min",              null: false
    t.integer  "max",              null: false
    t.string   "search_query_str", null: false
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "rooms", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "studio_id"
    t.string   "name"
    t.integer  "size"
    t.integer  "capacity",                   default: 0, null: false
    t.integer  "price",                      default: 0, null: false
    t.string   "mirror"
    t.integer  "floor"
    t.integer  "speaker",      limit: 1,     default: 0, null: false
    t.integer  "mixer",        limit: 1,     default: 0, null: false
    t.integer  "cd",           limit: 1,     default: 0, null: false
    t.integer  "md",           limit: 1,     default: 0, null: false
    t.integer  "mp3",          limit: 1,     default: 0, null: false
    t.string   "other_source"
    t.integer  "dimmable",     limit: 1,     default: 0, null: false
    t.integer  "wifi",         limit: 1,     default: 0, null: false
    t.string   "image"
    t.text     "feature",      limit: 65535
    t.text     "remarks",      limit: 65535
    t.text     "memo",         limit: 65535
    t.integer  "status",       limit: 1,     default: 0
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "studio_images", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "studio_id",  null: false
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["studio_id"], name: "index_studio_images_on_studio_id", using: :btree
  end

  create_table "studios", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.integer  "area_id"
    t.string   "address"
    t.string   "nearest_station_1"
    t.string   "nearest_station_2"
    t.string   "nearest_station_3"
    t.string   "tel"
    t.time     "start_hours"
    t.time     "end_hours"
    t.integer  "late_night",         limit: 1,     default: 0, null: false
    t.integer  "locker_room",        limit: 1,     default: 0, null: false
    t.integer  "parking",            limit: 1,     default: 0, null: false
    t.string   "cancell_deadline"
    t.string   "url"
    t.text     "feature",            limit: 65535
    t.text     "remarks",            limit: 65535
    t.text     "memo",               limit: 65535
    t.integer  "status",             limit: 1,     default: 0
    t.string   "slug"
    t.string   "meta_title"
    t.string   "meta_description"
    t.string   "meta_ogp_image_url"
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
    t.text     "latlng",             limit: 65535
    t.index ["slug"], name: "index_studios_on_slug", unique: true, using: :btree
  end

end
