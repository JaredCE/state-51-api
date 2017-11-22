class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.integer :grouping_id
      t.references :artist, foreign_key: true
      t.string :display_artist
      t.integer :barcode
      t.string :catalogue_number
      t.references :releaseformat, foreign_key: true
      t.references :soundcarrier, foreign_key: true
      t.references :priceband, foreign_key: true
      t.datetime :release_date_start
      t.datetime :release_date_end
      t.string :grid
      t.integer :publish_year
      t.references :publisher, foreign_key: true
      t.integer :copyright_year
      t.references :copyrightholder, foreign_key: true
      t.string :status
      t.references :label, foreign_key: true
      t.boolean :explicit_content
      t.integer :vol_no
      t.integer :vol_total
      t.string :DMS

      t.timestamps
    end
  end
end
