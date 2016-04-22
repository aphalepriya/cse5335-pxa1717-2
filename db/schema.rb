
ActiveRecord::Schema.define(version: 20140818112518) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "users", force: true do |t|
    t.string "code"
    t.string "name"
    t.string "location"
  end

end
