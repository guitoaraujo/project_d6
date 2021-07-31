# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_210_731_142_016) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'characters', force: :cascade do |t|
    t.string 'name', default: '', null: false
    t.string 'age', default: '', null: false
    t.integer 'strength', default: 2, null: false
    t.integer 'agility', default: 2, null: false
    t.integer 'constitution', default: 2, null: false
    t.integer 'intelligence', default: 2, null: false
    t.integer 'presence', default: 2, null: false
    t.integer 'power', default: 2, null: false
    t.integer 'level', default: 1, null: false
    t.integer 'tier', default: 1, null: false
    t.integer 'stage', default: 1, null: false
    t.integer 'experience', default: 0, null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.bigint 'user_id', null: false
    t.index ['user_id'], name: 'index_characters_on_user_id'
  end

  create_table 'lineages', force: :cascade do |t|
    t.string 'name', default: '', null: false
    t.text 'description'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'occupations', force: :cascade do |t|
    t.string 'name'
    t.text 'description'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'paths', force: :cascade do |t|
    t.string 'name'
    t.text 'description'
    t.bigint 'occupation_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['occupation_id'], name: 'index_paths_on_occupation_id'
  end

  create_table 'users', force: :cascade do |t|
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['email'], name: 'index_users_on_email', unique: true
    t.index ['reset_password_token'], name: 'index_users_on_reset_password_token', unique: true
  end

  add_foreign_key 'characters', 'users'
  add_foreign_key 'paths', 'occupations'
end
