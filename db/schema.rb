# encoding: UTF-8
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

ActiveRecord::Schema.define(:version => 20130331005655) do

  create_table "cities", :force => true do |t|
    t.text     "name"
    t.integer  "country_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "cities", ["country_id"], :name => "index_cities_on_country_id"

  create_table "countries", :force => true do |t|
    t.text     "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "shops", :force => true do |t|
    t.text     "name"
    t.text     "direccion"
    t.integer  "country_id"
    t.integer  "city_id"
    t.text     "url_web"
    t.text     "url_facebook"
    t.text     "url_foursquare"
    t.text     "phone"
    t.text     "email"
    t.text     "geo_coordinates"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "shops", ["city_id"], :name => "index_shops_on_city_id"
  add_index "shops", ["country_id"], :name => "index_shops_on_country_id"

end
