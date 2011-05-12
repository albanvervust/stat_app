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

ActiveRecord::Schema.define(:version => 20110512163210) do

  create_table "infos", :force => true do |t|
    t.integer  "age"
    t.integer  "taille"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "sexe"
  end

  create_table "sports", :force => true do |t|
    t.string   "activite"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "villes", :force => true do |t|
    t.string   "country"
    t.string   "city"
    t.string   "accentcity"
    t.string   "region"
    t.integer  "population"
    t.string   "latitude"
    t.string   "longitude"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
