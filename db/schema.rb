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

ActiveRecord::Schema.define(version: 2019_06_12_142121) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "genders", force: :cascade do |t|
    t.string "name"
  end

  create_table "pokemon_types", force: :cascade do |t|
    t.string "name"
  end

  create_table "pokemons", force: :cascade do |t|
    t.string "name"
    t.bigint "pokemon_type_id"
    t.bigint "gender_id"
    t.bigint "user_id"
    t.index ["gender_id"], name: "index_pokemons_on_gender_id"
    t.index ["pokemon_type_id"], name: "index_pokemons_on_pokemon_type_id"
    t.index ["user_id"], name: "index_pokemons_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
  end

  add_foreign_key "pokemons", "genders"
  add_foreign_key "pokemons", "pokemon_types"
  add_foreign_key "pokemons", "users"
end
