ActiveRecord::Schema.define(version: 2020_09_23_163346) do
  enable_extension "plpgsql"

  create_table "sonics", force: :cascade do |t|
    t.text "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
