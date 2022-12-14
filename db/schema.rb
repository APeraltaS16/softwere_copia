# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

=begin ActiveRecord::Schema.define(version: 2022_10_21_191355) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "canchas", force: :cascade do |t|
    t.integer "aforo"
    t.string "tipo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.string "comentario"
    t.float "calificacion"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.bigint "cancha_id", null: false
    t.index ["cancha_id"], name: "index_reviews_on_cancha_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "solicituds", force: :cascade do |t|
    t.text "descripcion"
    t.date "dia_reserva"
    t.time "hora_reserva"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.string "estado"
    t.index ["user_id"], name: "index_solicituds_on_user_id"
  end

  create_table "solicituds_users", id: false, force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "solicitud_id", null: false
    t.index ["solicitud_id", "user_id"], name: "index_solicituds_users_on_solicitud_id_and_user_id"
    t.index ["user_id", "solicitud_id"], name: "index_solicituds_users_on_user_id_and_solicitud_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "role"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "reviews", "canchas"
  add_foreign_key "reviews", "users"
  add_foreign_key "solicituds", "users"
end =end
