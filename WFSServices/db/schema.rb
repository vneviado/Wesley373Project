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

ActiveRecord::Schema.define(version: 20190424230254) do

  create_table "categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "created_by"
    t.string "updated_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text "content"
    t.date "date_created"
    t.bigint "service_id"
    t.string "created_by"
    t.string "updated_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["service_id"], name: "index_comments_on_service_id"
  end

  create_table "contacts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "work_number"
    t.string "phone_number"
    t.string "street_1"
    t.string "city_1"
    t.string "zipcode_1"
    t.string "street_2"
    t.string "city_2"
    t.string "zipcode_2"
    t.string "role"
    t.string "photo"
    t.string "created_by"
    t.string "updated_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "costs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.float "unit_cost", limit: 24
    t.float "unit_rate", limit: 24
    t.float "avg_los", limit: 24
    t.float "rev_los", limit: 24
    t.string "frequency"
    t.bigint "service_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["service_type_id"], name: "index_costs_on_service_type_id"
  end

  create_table "locations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "phone_number"
    t.string "street"
    t.string "city"
    t.string "zipcode"
    t.string "photo"
    t.text "map_link"
    t.string "created_by"
    t.string "updated_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "service_contacts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "service_id"
    t.bigint "contact_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contact_id"], name: "index_service_contacts_on_contact_id"
    t.index ["service_id"], name: "index_service_contacts_on_service_id"
  end

  create_table "service_locations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "service_id"
    t.bigint "location_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_id"], name: "index_service_locations_on_location_id"
    t.index ["service_id"], name: "index_service_locations_on_service_id"
  end

  create_table "service_types", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "staff"
    t.float "unit_cost", limit: 24
    t.float "unit_rate", limit: 24
    t.float "avg_los", limit: 24
    t.float "rev_los", limit: 24
    t.string "frequency"
    t.string "created_by"
    t.string "updated_by"
    t.bigint "service_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["service_id"], name: "index_service_types_on_service_id"
  end

  create_table "services", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "description"
    t.string "philosophy"
    t.string "entrance_criteria"
    t.string "exclusion_criteria"
    t.string "exit_criteria"
    t.string "level_of_care"
    t.string "average_length_of_stay"
    t.string "referral_process"
    t.string "payment_insurance"
    t.string "matching_elements"
    t.string "web_address"
    t.string "array_of_services"
    t.string "microenterprise"
    t.string "created_by"
    t.string "updated_by"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_services_on_category_id"
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "username"
    t.string "role"
    t.string "group_string"
    t.text "services"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "comments", "services"
  add_foreign_key "service_contacts", "contacts"
  add_foreign_key "service_contacts", "services"
  add_foreign_key "service_locations", "locations"
  add_foreign_key "service_locations", "services"
end
