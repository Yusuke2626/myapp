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

ActiveRecord::Schema.define(version: 2019_12_14_170951) do

  create_table "addresses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "postcode"
    t.string "prefecture_code"
    t.string "address_city"
    t.string "address_street"
    t.string "address_building"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "house_id"
    t.string "address"
    t.float "latitude"
    t.float "longitude"
    t.index ["house_id"], name: "index_addresses_on_house_id"
  end

  create_table "areas", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "postal_code", null: false
    t.bigint "prefecture_id"
    t.string "city", default: ""
    t.string "street", default: ""
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["prefecture_id"], name: "index_areas_on_prefecture_id"
  end

  create_table "cities", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "pref_id"
    t.string "name", limit: 16
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "favorites", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "house_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["house_id"], name: "index_favorites_on_house_id"
    t.index ["user_id", "house_id"], name: "index_favorites_on_user_id_and_house_id", unique: true
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "houses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "prefecture_id"
    t.string "madori"
    t.integer "house_age"
    t.index ["prefecture_id"], name: "index_houses_on_prefecture_id"
    t.index ["user_id"], name: "index_houses_on_user_id"
  end

  create_table "images", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "image1"
    t.text "image2"
    t.text "image3"
    t.text "image4"
    t.text "image5"
    t.bigint "house_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["house_id"], name: "index_images_on_house_id"
  end

  create_table "messages", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "tittle"
    t.text "text"
    t.integer "to_user_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "open_num"
    t.integer "house_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "prefecture_users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "prefecture_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["prefecture_id"], name: "index_prefecture_users_on_prefecture_id"
    t.index ["user_id"], name: "index_prefecture_users_on_user_id"
  end

  create_table "prefectures", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", limit: 4
  end

  create_table "purchases", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "qaforms", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "house_id"
    t.text "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["house_id"], name: "index_qaforms_on_house_id"
    t.index ["user_id"], name: "index_qaforms_on_user_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.integer "age", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "access_code"
    t.string "publishable_key"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "addresses", "houses"
  add_foreign_key "areas", "prefectures"
  add_foreign_key "favorites", "houses"
  add_foreign_key "favorites", "users"
  add_foreign_key "houses", "prefectures"
  add_foreign_key "houses", "users"
  add_foreign_key "images", "houses"
  add_foreign_key "messages", "users"
  add_foreign_key "prefecture_users", "prefectures"
  add_foreign_key "prefecture_users", "users"
end
