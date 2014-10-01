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

ActiveRecord::Schema.define(:version => 20140929190242) do

  create_table "city_ratings", :force => true do |t|
    t.integer  "lookup_rating_type_id"
    t.integer  "lookup_city_id"
    t.integer  "user_id"
    t.integer  "rate_amount"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "country_ratings", :force => true do |t|
    t.integer  "lookup_rating_type_id"
    t.integer  "lookup_country_id"
    t.integer  "user_id"
    t.integer  "rate_amount"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "drink_categorizations", :force => true do |t|
    t.integer  "drink_id"
    t.integer  "lookup_drink_type_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "drink_origins", :force => true do |t|
    t.integer  "lookup_country_id"
    t.integer  "drink_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "drink_spirits", :force => true do |t|
    t.integer  "drink_id"
    t.integer  "lookup_spirit_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "drinks", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "ingredients"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "event_cuisines", :force => true do |t|
    t.integer  "lookup_cuisine_type_id"
    t.integer  "event_id"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  create_table "event_musics", :force => true do |t|
    t.integer  "lookup_music_type_id"
    t.integer  "event_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "event_ratings", :force => true do |t|
    t.integer  "lookup_rating_type_id"
    t.integer  "event_id"
    t.integer  "user_id"
    t.integer  "rate_amount"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "event_tribes", :force => true do |t|
    t.integer  "lookup_tribe_type_id"
    t.integer  "event_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "events", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "official_website_link"
    t.float    "price"
    t.integer  "venue_id"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "lookup_cities", :force => true do |t|
    t.string   "city_name"
    t.text     "description"
    t.float    "english_speakers_percentage"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "timezone"
    t.string   "code"
    t.integer  "lookup_country_id"
    t.integer  "lookup_region_id"
    t.integer  "last_call_time_id"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "lookup_countries", :force => true do |t|
    t.string   "country_name"
    t.string   "fips104"
    t.string   "iso2"
    t.string   "iso3"
    t.integer  "ison"
    t.string   "internet"
    t.string   "capital"
    t.string   "map_reference"
    t.string   "nationality"
    t.string   "currency"
    t.string   "currency_code"
    t.integer  "population"
    t.text     "description"
    t.float    "english_speakers_percentage"
    t.integer  "last_call_time_id"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "lookup_cuisine_types", :force => true do |t|
    t.string   "cuisine_name"
    t.text     "description"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "lookup_days", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "lookup_drink_types", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "lookup_genders", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "lookup_hours", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "lookup_languages", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "lookup_music_types", :force => true do |t|
    t.string   "music_name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "lookup_parking_types", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "lookup_rating_types", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "lookup_regions", :force => true do |t|
    t.string   "region_name"
    t.string   "code"
    t.string   "adm1code"
    t.string   "description"
    t.integer  "lookup_country_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "lookup_relationship_statuses", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "lookup_spirits", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "lookup_tribe_types", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "lookup_venue_types", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "performer_languages", :force => true do |t|
    t.integer  "lookup_language_id"
    t.integer  "performer_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "performer_musics", :force => true do |t|
    t.integer  "lookup_music_type_id"
    t.integer  "performer_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "performer_ratings", :force => true do |t|
    t.integer  "lookup_rating_type_id"
    t.integer  "performer_id"
    t.integer  "user_id"
    t.integer  "rate_amount"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "performer_tribes", :force => true do |t|
    t.integer  "lookup_tribe_type_id"
    t.integer  "performer_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "performers", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "user_id"
    t.integer  "hometown_city_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "user_cuisines", :force => true do |t|
    t.integer  "lookup_cuisine_type_id"
    t.integer  "user_id"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  create_table "user_fav_drink_types", :force => true do |t|
    t.integer  "lookup_drink_type_id"
    t.integer  "user_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "user_fav_drinks", :force => true do |t|
    t.integer  "drink_id"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "user_fav_spirits", :force => true do |t|
    t.integer  "lookup_spirit_id"
    t.integer  "user_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "user_languages", :force => true do |t|
    t.integer  "lookup_language_id"
    t.integer  "user_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "user_musics", :force => true do |t|
    t.integer  "lookup_music_type_id"
    t.integer  "user_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "user_tribes", :force => true do |t|
    t.integer  "lookup_tribe_type_id"
    t.integer  "user_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "photo"
    t.string   "phone"
    t.date     "birthday"
    t.boolean  "ambassador"
    t.integer  "lookup_gender_id"
    t.integer  "interested_in_gender_id"
    t.integer  "hometown_city_id"
    t.integer  "current_city_id"
    t.integer  "lookup_relationship_status_id"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "venue_classifications", :force => true do |t|
    t.integer  "lookup_venue_type_id"
    t.integer  "venue_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "venue_cuisines", :force => true do |t|
    t.integer  "lookup_cuisine_type_id"
    t.integer  "venue_id"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  create_table "venue_musics", :force => true do |t|
    t.integer  "lookup_music_type_id"
    t.integer  "venue_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "venue_ratings", :force => true do |t|
    t.integer  "lookup_rating_type_id"
    t.integer  "venue_id"
    t.integer  "user_id"
    t.integer  "rate_amount"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "venue_tribes", :force => true do |t|
    t.integer  "lookup_tribe_type_id"
    t.integer  "venue_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "venues", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "email"
    t.string   "website"
    t.string   "phone"
    t.string   "alt_phone"
    t.integer  "minimum_age"
    t.text     "description"
    t.text     "whats_cool"
    t.text     "tips_and_tricks"
    t.boolean  "outdoor_seating"
    t.boolean  "entrance_fee"
    t.boolean  "wheelchair_access"
    t.boolean  "gay_friendly"
    t.integer  "owner_id"
    t.integer  "lookup_parking_type_id"
    t.integer  "city_id"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  create_table "working_hours", :force => true do |t|
    t.integer  "venue_id"
    t.integer  "opening_hour_id"
    t.integer  "closing_hour_id"
    t.integer  "working_day_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
