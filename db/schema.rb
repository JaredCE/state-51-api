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

ActiveRecord::Schema.define(version: 20171122061806) do

  create_table "artists", force: :cascade do |t|
    t.string "artist"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "copyright_holders", force: :cascade do |t|
    t.string "holder"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string "genre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "labels", force: :cascade do |t|
    t.string "label"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "price_bands", force: :cascade do |t|
    t.string "band"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_artists", force: :cascade do |t|
    t.integer "product_id"
    t.integer "artist_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artist_id"], name: "index_product_artists_on_artist_id"
    t.index ["product_id"], name: "index_product_artists_on_product_id"
  end

  create_table "product_excluded_territories", force: :cascade do |t|
    t.integer "product_id"
    t.integer "territory_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_product_excluded_territories_on_product_id"
    t.index ["territory_id"], name: "index_product_excluded_territories_on_territory_id"
  end

  create_table "product_genres", force: :cascade do |t|
    t.integer "product_id"
    t.integer "genre_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["genre_id"], name: "index_product_genres_on_genre_id"
    t.index ["product_id"], name: "index_product_genres_on_product_id"
  end

  create_table "product_territories", force: :cascade do |t|
    t.integer "product_id"
    t.integer "territory_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_product_territories_on_product_id"
    t.index ["territory_id"], name: "index_product_territories_on_territory_id"
  end

  create_table "product_tracks", force: :cascade do |t|
    t.integer "product_id"
    t.integer "track_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_product_tracks_on_product_id"
    t.index ["track_id"], name: "index_product_tracks_on_track_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "grouping_id"
    t.integer "artist_id"
    t.string "display_artist"
    t.integer "barcode"
    t.string "catalogue_number"
    t.integer "releaseformat_id"
    t.integer "soundcarrier_id"
    t.integer "priceband_id"
    t.datetime "release_date_start"
    t.datetime "release_date_end"
    t.string "grid"
    t.integer "publish_year"
    t.integer "publisher_id"
    t.integer "copyright_year"
    t.integer "copyrightholder_id"
    t.string "status"
    t.integer "label_id"
    t.boolean "explicit_content"
    t.integer "vol_no"
    t.integer "vol_total"
    t.string "DMS"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artist_id"], name: "index_products_on_artist_id"
    t.index ["copyrightholder_id"], name: "index_products_on_copyrightholder_id"
    t.index ["label_id"], name: "index_products_on_label_id"
    t.index ["priceband_id"], name: "index_products_on_priceband_id"
    t.index ["publisher_id"], name: "index_products_on_publisher_id"
    t.index ["releaseformat_id"], name: "index_products_on_releaseformat_id"
    t.index ["soundcarrier_id"], name: "index_products_on_soundcarrier_id"
  end

  create_table "publishers", force: :cascade do |t|
    t.string "publisher"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "release_formats", force: :cascade do |t|
    t.string "format"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sound_carriers", force: :cascade do |t|
    t.string "carrier"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "territories", force: :cascade do |t|
    t.string "territory"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "track_artists", force: :cascade do |t|
    t.integer "track_id"
    t.integer "artist_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artist_id"], name: "index_track_artists_on_artist_id"
    t.index ["track_id"], name: "index_track_artists_on_track_id"
  end

  create_table "track_composers", force: :cascade do |t|
    t.string "composer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "track_genres", force: :cascade do |t|
    t.integer "track_id"
    t.integer "genre_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["genre_id"], name: "index_track_genres_on_genre_id"
    t.index ["track_id"], name: "index_track_genres_on_track_id"
  end

  create_table "track_lyricists", force: :cascade do |t|
    t.string "lyricist"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "track_mixers", force: :cascade do |t|
    t.string "mixer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "track_publishers", force: :cascade do |t|
    t.string "publisher"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "track_to_composers", force: :cascade do |t|
    t.integer "track_id"
    t.integer "trackcomposer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["track_id"], name: "index_track_to_composers_on_track_id"
    t.index ["trackcomposer_id"], name: "index_track_to_composers_on_trackcomposer_id"
  end

  create_table "track_to_lyricists", force: :cascade do |t|
    t.integer "track_id"
    t.integer "tracklyricist_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["track_id"], name: "index_track_to_lyricists_on_track_id"
    t.index ["tracklyricist_id"], name: "index_track_to_lyricists_on_tracklyricist_id"
  end

  create_table "track_to_mixers", force: :cascade do |t|
    t.integer "track_id"
    t.integer "trackmixer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["track_id"], name: "index_track_to_mixers_on_track_id"
    t.index ["trackmixer_id"], name: "index_track_to_mixers_on_trackmixer_id"
  end

  create_table "track_to_products", force: :cascade do |t|
    t.integer "track_id"
    t.integer "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_track_to_products_on_product_id"
    t.index ["track_id"], name: "index_track_to_products_on_track_id"
  end

  create_table "track_to_publishers", force: :cascade do |t|
    t.integer "track_id"
    t.integer "trackpublisher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["track_id"], name: "index_track_to_publishers_on_track_id"
    t.index ["trackpublisher_id"], name: "index_track_to_publishers_on_trackpublisher_id"
  end

  create_table "tracks", force: :cascade do |t|
    t.integer "track_no"
    t.string "title"
    t.string "mix"
    t.string "display_artist"
    t.string "isrc"
    t.string "grid"
    t.boolean "avail_sep"
    t.integer "published_year"
    t.integer "publisher_id"
    t.integer "copyright_year"
    t.integer "copyrightholder_id"
    t.boolean "explicit_content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["copyrightholder_id"], name: "index_tracks_on_copyrightholder_id"
    t.index ["publisher_id"], name: "index_tracks_on_publisher_id"
  end

end
