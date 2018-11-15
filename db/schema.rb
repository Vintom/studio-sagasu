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

ActiveRecord::Schema.define(version: 20181114085207) do

  create_table "accounts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "email"
    t.string   "tel"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "areas", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "prefecture"
    t.string   "city"
    t.string   "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rooms", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "studio_id"
    t.string   "name"
    t.integer  "size"
    t.integer  "capacity", null: false       default: 0
    t.integer  "price",                      default: 0
    t.string   "mirror"
    t.integer  "floor"
    t.boolean  "speaker",                    default: false
    t.boolean  "mixer",                      default: false
    t.boolean  "cd",                         default: false
    t.boolean  "md",                         default: false
    t.boolean  "mp3",                        default: false
    t.string   "other_source"
    t.boolean  "dimmable",                   default: false
    t.boolean  "wifi",                       default: false
    t.string   "image"
    t.text     "feature",      limit: 65535
    t.text     "remarks",      limit: 65535
    t.text     "memo",         limit: 65535
    t.integer  "status",       limit: 1,     default: 0
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
  end

  create_table "stations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.integer  "account_id"
    t.integer  "area_id"
    t.string   "address"
    t.string   "nearest_station_1"
    t.string   "nearest_station_2"
    t.string   "nearest_station_3"
    t.string   "tel"
    t.time     "start_hours"
    t.time     "end_hours"
    t.boolean  "late_night",                          default: false
    t.boolean  "locker_room",                         default: false
    t.boolean  "parking",                             default: false
    t.string   "cancell_deadline"
    t.string   "url"
    t.text     "feature",            limit: 65535
    t.text     "remarks",            limit: 65535
    t.text     "memo",               limit: 65535
    t.integer  "status",             limit: 1,        default: 0
    t.string   "slug"
    t.string   "meta_title"
    t.string   "meta_description"
    t.string   "meta_ogp_image_url"
    t.datetime "created_at",                                          null: false
    t.datetime "updated_at",                                          null: false
    t.text     "latlng",             limit: 65535
    t.index ["slug"], name: "index_studios_on_slug", unique: true, using: :btree
  end

end
