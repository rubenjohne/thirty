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

ActiveRecord::Schema.define(:version => 20130228032728) do

  create_table "stories", :force => true do |t|
    t.integer  "participant_number"
    t.string   "image_filename"
    t.text     "about_me"
    t.text     "anecdote"
    t.string   "name"
    t.string   "company"
    t.string   "email_address"
    t.text     "mailing_address"
    t.boolean  "approved",                        :default => false
    t.datetime "created_at",                                         :null => false
    t.datetime "updated_at",                                         :null => false
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
    t.string   "picture_with_count_file_name"
    t.string   "picture_with_count_content_type"
    t.integer  "picture_with_count_file_size"
    t.datetime "picture_with_count_updated_at"
    t.string   "black_and_white_file_name"
    t.string   "black_and_white_content_type"
    t.integer  "black_and_white_file_size"
    t.datetime "black_and_white_updated_at"
    t.boolean  "featured",                        :default => false
    t.boolean  "active"
    t.string   "first_name"
    t.string   "last_name"
    t.boolean  "subscribe"
    t.string   "street_address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "password"
    t.string   "email"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "encrypted_password"
    t.string   "salt"
  end

end
