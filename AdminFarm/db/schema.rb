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

ActiveRecord::Schema.define(version: 20180208223415) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "animal_categories", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.boolean "obsolete"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_animal_categories_on_name", unique: true
  end

  create_table "animal_deaths", force: :cascade do |t|
    t.bigint "animal_id"
    t.bigint "death_type_id"
    t.bigint "destiny_id"
    t.date "date_death"
    t.string "observation"
    t.decimal "final_weigh"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["animal_id"], name: "index_animal_deaths_on_animal_id"
    t.index ["death_type_id"], name: "index_animal_deaths_on_death_type_id"
    t.index ["destiny_id"], name: "index_animal_deaths_on_destiny_id"
  end

  create_table "animal_sales", force: :cascade do |t|
    t.bigint "animal_id"
    t.bigint "sale_type_id"
    t.bigint "destiny_id"
    t.date "date_sale"
    t.string "observation"
    t.decimal "purchase_value"
    t.decimal "sales_value"
    t.decimal "final_weigh"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["animal_id"], name: "index_animal_sales_on_animal_id"
    t.index ["destiny_id"], name: "index_animal_sales_on_destiny_id"
    t.index ["sale_type_id"], name: "index_animal_sales_on_sale_type_id"
  end

  create_table "animal_stages", force: :cascade do |t|
    t.bigint "animal_category_id"
    t.bigint "gender_id"
    t.string "name"
    t.integer "min_month"
    t.integer "max_month"
    t.string "description"
    t.boolean "obsolete"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["animal_category_id"], name: "index_animal_stages_on_animal_category_id"
    t.index ["gender_id"], name: "index_animal_stages_on_gender_id"
    t.index ["name"], name: "index_animal_stages_on_name", unique: true
  end

  create_table "animal_states", force: :cascade do |t|
    t.bigint "animal_category_id"
    t.bigint "gender_id"
    t.string "name"
    t.decimal "weigh_min"
    t.decimal "weigh_max"
    t.string "description"
    t.boolean "obsolete"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["animal_category_id"], name: "index_animal_states_on_animal_category_id"
    t.index ["gender_id"], name: "index_animal_states_on_gender_id"
  end

  create_table "animals", force: :cascade do |t|
    t.bigint "animal_category_id"
    t.bigint "breed_animal_id"
    t.bigint "gender_id"
    t.bigint "animal_stage_id"
    t.bigint "animal_state_id"
    t.bigint "origin_id"
    t.bigint "farm_id"
    t.string "number_earring"
    t.date "date_register"
    t.date "birth_date"
    t.string "earring_mother_number"
    t.decimal "initial_weigh"
    t.string "description"
    t.boolean "obsolete"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["animal_category_id"], name: "index_animals_on_animal_category_id"
    t.index ["animal_stage_id"], name: "index_animals_on_animal_stage_id"
    t.index ["animal_state_id"], name: "index_animals_on_animal_state_id"
    t.index ["breed_animal_id"], name: "index_animals_on_breed_animal_id"
    t.index ["farm_id"], name: "index_animals_on_farm_id"
    t.index ["gender_id"], name: "index_animals_on_gender_id"
    t.index ["number_earring"], name: "index_animals_on_number_earring", unique: true
    t.index ["origin_id"], name: "index_animals_on_origin_id"
  end

  create_table "application_medicines", force: :cascade do |t|
    t.bigint "animal_id"
    t.bigint "medicine_id"
    t.date "date_medicine"
    t.string "observation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["animal_id"], name: "index_application_medicines_on_animal_id"
    t.index ["medicine_id"], name: "index_application_medicines_on_medicine_id"
  end

  create_table "breed_animals", force: :cascade do |t|
    t.bigint "animal_category_id"
    t.string "name"
    t.string "description"
    t.boolean "obsolete"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["animal_category_id"], name: "index_breed_animals_on_animal_category_id"
    t.index ["name"], name: "index_breed_animals_on_name", unique: true
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "slogan"
    t.string "phone"
    t.string "fax"
    t.string "cel"
    t.string "description"
    t.string "info"
    t.string "email"
    t.string "contact_email"
    t.text "mission"
    t.text "vision"
    t.text "valuables"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_companies_on_name", unique: true
  end

  create_table "contacts", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.text "message"
    t.boolean "accept"
    t.boolean "newsletter"
    t.string "info"
    t.string "obs"
    t.boolean "answered"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "death_types", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.boolean "obsolete"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "destinies", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.boolean "obsolete"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_destinies_on_name", unique: true
  end

  create_table "farm_lots", force: :cascade do |t|
    t.bigint "farm_id"
    t.string "name"
    t.string "description"
    t.boolean "obsolete"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["farm_id"], name: "index_farm_lots_on_farm_id"
  end

  create_table "farms", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.integer "hectare_quantity"
    t.string "description"
    t.boolean "obsolete"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_farms_on_name", unique: true
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
    t.index ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"
  end

  create_table "genders", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.boolean "obsolete"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_genders_on_name", unique: true
  end

  create_table "medicines", force: :cascade do |t|
    t.bigint "animal_category_id"
    t.string "name"
    t.string "description"
    t.boolean "obsolete"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["animal_category_id"], name: "index_medicines_on_animal_category_id"
    t.index ["name"], name: "index_medicines_on_name", unique: true
  end

  create_table "origins", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.boolean "obsolete"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_origins_on_name", unique: true
  end

  create_table "sale_types", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.boolean "obsolete"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vaccinations", force: :cascade do |t|
    t.bigint "animal_id"
    t.bigint "vaccine_id"
    t.date "date_vaccine"
    t.string "observation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["animal_id"], name: "index_vaccinations_on_animal_id"
    t.index ["vaccine_id"], name: "index_vaccinations_on_vaccine_id"
  end

  create_table "vaccines", force: :cascade do |t|
    t.bigint "animal_category_id"
    t.string "name"
    t.string "description"
    t.boolean "obsolete"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["animal_category_id"], name: "index_vaccines_on_animal_category_id"
    t.index ["name"], name: "index_vaccines_on_name", unique: true
  end

  create_table "weighings", force: :cascade do |t|
    t.bigint "animal_id"
    t.bigint "animal_stage_id"
    t.date "weigh_date"
    t.decimal "weight"
    t.decimal "gain_weight"
    t.bigint "animal_state_id"
    t.boolean "pregnant"
    t.boolean "sick"
    t.string "description"
    t.string "observation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["animal_id"], name: "index_weighings_on_animal_id"
    t.index ["animal_stage_id"], name: "index_weighings_on_animal_stage_id"
    t.index ["animal_state_id"], name: "index_weighings_on_animal_state_id"
  end

  add_foreign_key "animal_deaths", "animals"
  add_foreign_key "animal_deaths", "death_types"
  add_foreign_key "animal_deaths", "destinies"
  add_foreign_key "animal_sales", "animals"
  add_foreign_key "animal_sales", "destinies"
  add_foreign_key "animal_sales", "sale_types"
  add_foreign_key "animal_stages", "animal_categories"
  add_foreign_key "animal_stages", "genders"
  add_foreign_key "animal_states", "animal_categories"
  add_foreign_key "animal_states", "genders"
  add_foreign_key "animals", "animal_categories"
  add_foreign_key "animals", "animal_stages"
  add_foreign_key "animals", "animal_states"
  add_foreign_key "animals", "breed_animals"
  add_foreign_key "animals", "farms"
  add_foreign_key "animals", "genders"
  add_foreign_key "animals", "origins"
  add_foreign_key "application_medicines", "animals"
  add_foreign_key "application_medicines", "medicines"
  add_foreign_key "breed_animals", "animal_categories"
  add_foreign_key "farm_lots", "farms"
  add_foreign_key "medicines", "animal_categories"
  add_foreign_key "vaccinations", "animals"
  add_foreign_key "vaccinations", "vaccines"
  add_foreign_key "vaccines", "animal_categories"
  add_foreign_key "weighings", "animal_stages"
  add_foreign_key "weighings", "animal_states"
  add_foreign_key "weighings", "animals"
end
