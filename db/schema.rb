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

ActiveRecord::Schema.define(:version => 20101205124730) do

  create_table "addresses", :force => true do |t|
    t.string   "name",        :limit => 60, :null => false
    t.string   "city",        :limit => 60, :null => false
    t.integer  "state_id"
    t.integer  "country_id",                :null => false
    t.string   "postal_code", :limit => 10
    t.text     "street"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "client_contacts", :id => false, :force => true do |t|
    t.integer "client_id"
    t.integer "contact_id"
  end

  create_table "client_relationships", :force => true do |t|
    t.integer  "client_id"
    t.integer  "contact_id"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clients", :force => true do |t|
    t.string   "name",           :limit => 60
    t.string   "account"
    t.boolean  "enabled"
    t.integer  "home_territory"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "communications", :force => true do |t|
    t.string "name", :limit => 60, :null => false
  end

  create_table "contacts", :force => true do |t|
    t.string   "name",          :limit => 60
    t.string   "title",         :limit => 60
    t.string   "first_name",    :limit => 60
    t.string   "last_name",     :limit => 60
    t.integer  "salutation_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "countries", :force => true do |t|
    t.string "code", :limit => 2,  :null => false
    t.string "name", :limit => 60, :null => false
  end

  create_table "employees", :force => true do |t|
    t.string   "first_name",    :limit => 60,                   :null => false
    t.string   "last_name",     :limit => 60,                   :null => false
    t.float    "standard_rate"
    t.boolean  "enabled",                     :default => true
    t.integer  "territory_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "dateofbirth"
  end

  create_table "projects", :force => true do |t|
    t.string   "name",               :limit => 60, :null => false
    t.text     "description"
    t.string   "type",               :limit => 5,  :null => false
    t.integer  "status",                           :null => false
    t.integer  "client_id"
    t.string   "reference",          :limit => 20
    t.date     "planned_start_date"
    t.date     "actual_start_date"
    t.date     "planned_end_date"
    t.date     "actual_end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "projects", ["client_id", "id"], :name => "by_client_id", :unique => true
  add_index "projects", ["planned_start_date", "id"], :name => "by_planned_start_date", :unique => true

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "states", :force => true do |t|
    t.string  "name",       :limit => 60,                   :null => false
    t.integer "country_id",                                 :null => false
    t.string  "code",       :limit => 10, :default => "XX", :null => false
  end

  create_table "territories", :force => true do |t|
    t.string   "name",        :limit => 60, :null => false
    t.string   "description"
    t.integer  "country_id"
    t.integer  "state_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
