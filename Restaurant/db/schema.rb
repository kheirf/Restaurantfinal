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

ActiveRecord::Schema.define(:version => 20130504182836) do

  create_table "bookings", :force => true do |t|
    t.string   "customerName"
    t.datetime "bookingDate"
    t.string   "contactNumber"
    t.string   "email"
    t.integer  "peopleNo"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "desserts", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "price"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "drinks", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "price"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "menus", :force => true do |t|
    t.string "dishName"
    t.string "description"
    t.string "price"
  end

  create_table "starters", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "price"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "subscribes", :force => true do |t|
    t.string "customerName"
    t.string "contactNo"
    t.string "email"
    t.string "password"
  end

end
