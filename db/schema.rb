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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150720152232) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "adminpack"

  create_table "alarme_silos", primary_key: "alarme_silo_id", force: :cascade do |t|
    t.integer "alarme_id", null: false
    t.integer "silo_id",   null: false
    t.integer "tipo",      null: false
  end

  create_table "alarmes", primary_key: "alarme_id", force: :cascade do |t|
    t.string  "tipo",   limit: 50
    t.integer "limite",            null: false
    t.integer "acao",              null: false
  end

  create_table "carregamentos", primary_key: "carregamento_id", force: :cascade do |t|
    t.integer  "silo_id",                 null: false
    t.integer  "user_silo_id",            null: false
    t.datetime "data",                    null: false
    t.string   "farinha",      limit: 50
    t.integer  "quilograma",              null: false
  end

  create_table "exploracaos", primary_key: "exploracao_id", force: :cascade do |t|
    t.string  "localizacao", limit: 100, null: false
    t.string  "nome",        limit: 100, null: false
    t.string  "tipo",        limit: 50
    t.integer "user_id"
  end

  create_table "historico_alarme_silos", primary_key: "historico_alarme_silo_id", force: :cascade do |t|
    t.integer  "alarme_silo_id", null: false
    t.datetime "date",           null: false
  end

  create_table "historico_silos", primary_key: "historico_silo_id", force: :cascade do |t|
    t.datetime "data",       null: false
    t.integer  "quilograma", null: false
    t.integer  "silo_id",    null: false
  end

  create_table "silos", primary_key: "silo_id", force: :cascade do |t|
    t.decimal "capacidade",               null: false
    t.string  "tipo",          limit: 50
    t.integer "exploracao_id",            null: false
    t.integer "created_at",    limit: 8
    t.integer "updated_at",    limit: 8
  end

  create_table "user_silos", primary_key: "user_silo_id", force: :cascade do |t|
    t.string "nome",    limit: 100
    t.string "empresa", limit: 100
    t.string "contato", limit: 50
    t.string "rfid",    limit: 100
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.string   "remember_digest"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

  add_foreign_key "alarme_silos", "alarmes", primary_key: "alarme_id", name: "alarme_silo_alarme_id_fkey"
  add_foreign_key "alarme_silos", "silos", primary_key: "silo_id", name: "alarme_silo_silo_id_fkey"
  add_foreign_key "carregamentos", "silos", primary_key: "silo_id", name: "carregamento_silo_id_fkey"
  add_foreign_key "carregamentos", "user_silos", primary_key: "user_silo_id", name: "carregamento_user_silo_id_fkey"
  add_foreign_key "historico_alarme_silos", "alarme_silos", primary_key: "alarme_silo_id", name: "historico_alarme_silo_alarme_silo_id_fkey"
  add_foreign_key "historico_silos", "silos", primary_key: "silo_id", name: "historico_silo_silo_id_fkey"
  add_foreign_key "silos", "exploracaos", primary_key: "exploracao_id", name: "fk1"
end
