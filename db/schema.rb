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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110311134219) do

  create_table "amenities", :force => true do |t|
    t.boolean  "floors",             :limit => 255
    t.integer  "square_ft"
    t.boolean  "parking",            :limit => 255
    t.boolean  "garden"
    t.boolean  "furnished"
    t.integer  "balcony"
    t.boolean  "patio"
    t.boolean  "security_system"
    t.boolean  "fireplace"
    t.boolean  "dishwasher"
    t.boolean  "refrigerator"
    t.boolean  "laundry"
    t.boolean  "carpeted_floors"
    t.boolean  "internet_access"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "listing_id"
    t.boolean  "unfurnished"
    t.boolean  "partly_furnished"
    t.boolean  "hard_wood_floors"
    t.boolean  "workout_facilities"
    t.boolean  "pet_ok"
    t.boolean  "dog_ok"
    t.boolean  "cat_ok"
    t.boolean  "roof_terrace"
    t.boolean  "garage"
    t.boolean  "washing_machine"
  end

  create_table "cities", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "diaries", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.integer  "landlord_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "documents", :force => true do |t|
    t.string   "title"
    t.text     "notes"
    t.string   "listing_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "landlords", :force => true do |t|
    t.string   "company_name"
    t.string   "contact_person"
    t.string   "title"
    t.string   "address"
    t.text     "notes"
    t.string   "email"
    t.string   "telephone"
    t.string   "mobile"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "postcode"
    t.string   "address2"
    t.string   "country"
    t.integer  "city_id"
  end

  create_table "listings", :force => true do |t|
    t.string   "address"
    t.string   "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "price"
    t.text     "body"
    t.string   "postcode"
    t.integer  "landlord_id"
    t.string   "property_type"
    t.string   "bedrooms"
    t.string   "bathrooms"
    t.string   "ad_type"
    t.integer  "position"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.integer  "city_id"
    t.boolean  "show_weekly"
  end

  create_table "microposts", :force => true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "microposts", ["user_id"], :name => "index_microposts_on_user_id"

  create_table "projects", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.integer  "listing_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", :force => true do |t|
    t.integer  "landlord_id",                :null => false
    t.integer  "project_id",                 :null => false
    t.integer  "status_id",   :default => 1, :null => false
    t.string   "title",                      :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "statuses", :force => true do |t|
    t.string   "title",      :null => false
    t.integer  "position",   :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tenants", :force => true do |t|
    t.string   "first_name",                   :null => false
    t.string   "last_name",                    :null => false
    t.string   "email",         :limit => 100, :null => false
    t.string   "telephone",     :limit => 50
    t.string   "mobile_phone",  :limit => 50
    t.string   "job_title"
    t.date     "date_of_birth"
    t.string   "gender",        :limit => 1
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "listing_id"
    t.string   "address"
    t.string   "postcode"
    t.integer  "city_id"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "salt"
    t.string   "encrypted_password"
    t.boolean  "admin"
  end

  create_table "versions", :force => true do |t|
    t.string   "item_type",  :null => false
    t.integer  "item_id",    :null => false
    t.string   "event",      :null => false
    t.string   "whodunnit"
    t.text     "object"
    t.datetime "created_at"
  end

  add_index "versions", ["item_type", "item_id"], :name => "index_versions_on_item_type_and_item_id"

end
