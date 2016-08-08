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

ActiveRecord::Schema.define(version: 20160808191605) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "isolates", force: :cascade do |t|
    t.integer "shipment_id"
    t.string  "jmi_number"
    t.string  "code_number"
    t.string  "accession_number"
    t.string  "organism"
    t.date    "date_of_admission"
    t.date    "date_of_culture"
    t.string  "source"
    t.string  "sex"
    t.integer "age"
    t.string  "service"
    t.string  "primary_diagnosis"
    t.boolean "icu"
    t.boolean "nosocomial"
    t.string  "specimen_type"
    t.index ["shipment_id"], name: "index_isolates_on_shipment_id", using: :btree
  end

  create_table "shipments", force: :cascade do |t|
    t.integer  "hospital_number"
    t.integer  "starting_number"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "objective_code"
    t.string   "organism"
    t.integer  "isolate_quantity"
    t.index ["hospital_number"], name: "index_shipments_on_hospital_number", using: :btree
  end

end
