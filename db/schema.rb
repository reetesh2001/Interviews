
ActiveRecord::Schema[7.1].define(version: 2024_07_08_122359) do
  create_table "hrs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
    t.string "status"
    t.integer "password"
    t.string "phone_number"
    t.string "password_digest"
  end

end
