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

ActiveRecord::Schema.define(version: 20190228000420) do

  create_table "categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "created_by"
    t.string "updated_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "work_number"
    t.string "phone_number"
    t.string "street_1"
    t.string "city_1"
    t.string "zipcode_1"
    t.string "street_2"
    t.string "city_2"
    t.string "zipcode_2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "phone_number"
    t.string "street"
    t.string "city"
    t.string "zipcode"
    t.string "created_by"
    t.string "updated_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "service_types", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "staff"
    t.string "created_by"
    t.string "updated_by"
    t.bigint "service_id"
    t.bigint "cost_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cost_id"], name: "index_service_types_on_cost_id"
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
    t.string "matching_elements"
    t.string "created_by"
    t.string "updated_by"
    t.bigint "category_id"
    t.bigint "contact_id"
    t.bigint "location_id"
    t.bigint "service_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_services_on_category_id"
    t.index ["contact_id"], name: "index_services_on_contact_id"
    t.index ["location_id"], name: "index_services_on_location_id"
    t.index ["service_type_id"], name: "index_services_on_service_type_id"
  end

end
